
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;




 int EVF_SIGNAL ;
 int PM1_SCI_EN ;
 int SIGTERM ;
 int SIG_IGN ;
 int assert (int) ;
 int * mevent_add (int ,int ,int ,struct vmctx*) ;
 int mevent_delete (int *) ;
 int old_power_handler ;
 int pm1_control ;
 int pm_lock ;
 int * power_button ;
 int power_button_handler ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal (int ,int ) ;

__attribute__((used)) static int
smi_cmd_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{

 assert(!in);
 if (bytes != 1)
  return (-1);

 pthread_mutex_lock(&pm_lock);
 switch (*eax) {
 case 128:
  pm1_control |= PM1_SCI_EN;
  if (power_button == ((void*)0)) {
   power_button = mevent_add(SIGTERM, EVF_SIGNAL,
       power_button_handler, ctx);
   old_power_handler = signal(SIGTERM, SIG_IGN);
  }
  break;
 case 129:
  pm1_control &= ~PM1_SCI_EN;
  if (power_button != ((void*)0)) {
   mevent_delete(power_button);
   power_button = ((void*)0);
   signal(SIGTERM, old_power_handler);
  }
  break;
 }
 pthread_mutex_unlock(&pm_lock);
 return (0);
}
