
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_vm_handle_t {struct netmap_priv_d* priv; struct cdev* dev; } ;
struct netmap_priv_d {int dummy; } ;
struct cdev {int dummy; } ;


 int M_DEVBUF ;
 int dev_rel (struct cdev*) ;
 int free (struct netmap_vm_handle_t*,int ) ;
 int netmap_dtor (struct netmap_priv_d*) ;
 scalar_t__ netmap_verbose ;
 int nm_prinf (char*,void*) ;

__attribute__((used)) static void
netmap_dev_pager_dtor(void *handle)
{
 struct netmap_vm_handle_t *vmh = handle;
 struct cdev *dev = vmh->dev;
 struct netmap_priv_d *priv = vmh->priv;

 if (netmap_verbose)
  nm_prinf("handle %p", handle);
 netmap_dtor(priv);
 free(vmh, M_DEVBUF);
 dev_rel(dev);
}
