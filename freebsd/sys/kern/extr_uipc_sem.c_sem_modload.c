
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int ksem_count_lock ;
 int ksem_dead ;
 int ksem_module_destroy () ;
 int ksem_module_init () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nsems ;

__attribute__((used)) static int
sem_modload(struct module *module, int cmd, void *arg)
{
        int error = 0;

        switch (cmd) {
        case 130:
  error = ksem_module_init();
  if (error)
   ksem_module_destroy();
                break;

        case 128:
  mtx_lock(&ksem_count_lock);
  if (nsems != 0) {
   error = EOPNOTSUPP;
   mtx_unlock(&ksem_count_lock);
   break;
  }
  ksem_dead = 1;
  mtx_unlock(&ksem_count_lock);
  ksem_module_destroy();
                break;

        case 129:
                break;
        default:
                error = EINVAL;
                break;
        }
        return (error);
}
