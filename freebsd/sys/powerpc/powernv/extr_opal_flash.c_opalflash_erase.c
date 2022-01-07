
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opalflash_softc {int sc_opal_id; TYPE_1__* sc_disk; } ;
struct opal_msg {int* params; } ;
typedef int off_t ;
typedef int msg ;
struct TYPE_2__ {int d_stripesize; } ;


 int EIO ;
 int OPAL_ASYNC_COMPLETION ;
 int OPAL_FLASH_ERASE ;
 int OPAL_SUCCESS ;
 int opal_alloc_async_token () ;
 int opal_call (int ,int ,int,int,int) ;
 int opal_free_async_token (int) ;
 int opal_wait_completion (struct opal_msg*,int,int) ;

__attribute__((used)) static int
opalflash_erase(struct opalflash_softc *sc, off_t off, off_t count)
{
 struct opal_msg msg;
 int rv, token;


 if (off % sc->sc_disk->d_stripesize != 0 ||
     count % sc->sc_disk->d_stripesize != 0)
  return (EIO);

 token = opal_alloc_async_token();

 rv = opal_call(OPAL_FLASH_ERASE, sc->sc_opal_id, off, count, token);
 if (rv == OPAL_ASYNC_COMPLETION) {
  rv = opal_wait_completion(&msg, sizeof(msg), token);
  if (rv == OPAL_SUCCESS)
   rv = msg.params[1];
 }
 opal_free_async_token(token);

 if (rv == OPAL_SUCCESS)
  rv = 0;
 else
  rv = EIO;

 return (rv);
}
