
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;


 int PM1_BM_STS ;
 int PM1_PWRBTN_STS ;
 int PM1_RTC_STS ;
 int PM1_SLPBTN_STS ;
 int PM1_WAK_STS ;
 int pm1_status ;
 int pm_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sci_update (struct vmctx*) ;

__attribute__((used)) static int
pm1_status_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{

 if (bytes != 2)
  return (-1);

 pthread_mutex_lock(&pm_lock);
 if (in)
  *eax = pm1_status;
 else {




  pm1_status &= ~(*eax & (PM1_WAK_STS | PM1_RTC_STS |
      PM1_SLPBTN_STS | PM1_PWRBTN_STS | PM1_BM_STS));
  sci_update(ctx);
 }
 pthread_mutex_unlock(&pm_lock);
 return (0);
}
