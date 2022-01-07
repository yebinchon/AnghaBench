
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct cryptocap {size_t cc_session_size; int cc_flags; int cc_dev; scalar_t__ cc_sessions; } ;
typedef TYPE_1__* crypto_session_t ;
struct TYPE_6__ {void* softc; } ;


 int CRYPTOCAP_F_CLEANUP ;
 int CRYPTODEV_FREESESSION (int ,TYPE_1__*) ;
 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 int KASSERT (int,char*) ;
 int M_CRYPTO_DATA ;
 struct cryptocap* crypto_drivers ;
 size_t crypto_drivers_num ;
 int crypto_remove (struct cryptocap*) ;
 size_t crypto_ses2hid (TYPE_1__*) ;
 int cryptoses_zone ;
 int explicit_bzero (void*,size_t) ;
 int free (void*,int ) ;
 int uma_zfree (int ,TYPE_1__*) ;

void
crypto_freesession(crypto_session_t cses)
{
 struct cryptocap *cap;
 void *ses;
 size_t ses_size;
 u_int32_t hid;

 if (cses == ((void*)0))
  return;

 CRYPTO_DRIVER_LOCK();

 hid = crypto_ses2hid(cses);
 KASSERT(hid < crypto_drivers_num,
     ("bogus crypto_session %p hid %u", cses, hid));
 cap = &crypto_drivers[hid];

 ses = cses->softc;
 ses_size = cap->cc_session_size;

 if (cap->cc_sessions)
  cap->cc_sessions--;


 CRYPTODEV_FREESESSION(cap->cc_dev, cses);

 explicit_bzero(ses, ses_size);
 free(ses, M_CRYPTO_DATA);
 uma_zfree(cryptoses_zone, cses);

 if (cap->cc_flags & CRYPTOCAP_F_CLEANUP)
  crypto_remove(cap);

 CRYPTO_DRIVER_UNLOCK();
}
