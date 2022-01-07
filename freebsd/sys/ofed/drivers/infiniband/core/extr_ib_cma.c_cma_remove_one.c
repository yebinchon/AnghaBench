
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct cma_device {struct cma_device* default_gid_type; int sysctl_ctx; int list; } ;


 int cma_process_remove (struct cma_device*) ;
 int kfree (struct cma_device*) ;
 int list_del (int *) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void cma_remove_one(struct ib_device *device, void *client_data)
{
 struct cma_device *cma_dev = client_data;

 if (!cma_dev)
  return;

 mutex_lock(&lock);
 list_del(&cma_dev->list);
 mutex_unlock(&lock);

 cma_process_remove(cma_dev);
 sysctl_ctx_free(&cma_dev->sysctl_ctx);
 kfree(cma_dev->default_gid_type);
 kfree(cma_dev);
}
