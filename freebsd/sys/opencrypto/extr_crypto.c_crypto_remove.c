
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocap {scalar_t__ cc_sessions; scalar_t__ cc_koperations; } ;


 int MA_OWNED ;
 int bzero (struct cryptocap*,int) ;
 int crypto_drivers_mtx ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
crypto_remove(struct cryptocap *cap)
{

 mtx_assert(&crypto_drivers_mtx, MA_OWNED);
 if (cap->cc_sessions == 0 && cap->cc_koperations == 0)
  bzero(cap, sizeof(*cap));
}
