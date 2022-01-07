
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int * vm_object_t ;
struct netmap_vm_handle_t {struct netmap_priv_d* priv; struct cdev* dev; } ;
struct netmap_priv_d {int np_refs; int * np_nifp; } ;
struct cdev {int dummy; } ;
typedef int intmax_t ;


 int EINVAL ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int OBJT_DEVICE ;
 int * cdev_pager_allocate (struct netmap_vm_handle_t*,int ,int *,scalar_t__,int,scalar_t__,int *) ;
 int devfs_get_cdevpriv (void**) ;
 int free (struct netmap_vm_handle_t*,int ) ;
 struct netmap_vm_handle_t* malloc (int,int ,int) ;
 int netmap_cdev_pager_ops ;
 scalar_t__ netmap_verbose ;
 int nm_prerr (char*) ;
 int nm_prinf (char*,struct cdev*,int ,int ,int **,int) ;

__attribute__((used)) static int
netmap_mmap_single(struct cdev *cdev, vm_ooffset_t *foff,
 vm_size_t objsize, vm_object_t *objp, int prot)
{
 int error;
 struct netmap_vm_handle_t *vmh;
 struct netmap_priv_d *priv;
 vm_object_t obj;

 if (netmap_verbose)
  nm_prinf("cdev %p foff %jd size %jd objp %p prot %d", cdev,
      (intmax_t )*foff, (intmax_t )objsize, objp, prot);

 vmh = malloc(sizeof(struct netmap_vm_handle_t), M_DEVBUF,
         M_NOWAIT | M_ZERO);
 if (vmh == ((void*)0))
  return ENOMEM;
 vmh->dev = cdev;

 NMG_LOCK();
 error = devfs_get_cdevpriv((void**)&priv);
 if (error)
  goto err_unlock;
 if (priv->np_nifp == ((void*)0)) {
  error = EINVAL;
  goto err_unlock;
 }
 vmh->priv = priv;
 priv->np_refs++;
 NMG_UNLOCK();

 obj = cdev_pager_allocate(vmh, OBJT_DEVICE,
  &netmap_cdev_pager_ops, objsize, prot,
  *foff, ((void*)0));
 if (obj == ((void*)0)) {
  nm_prerr("cdev_pager_allocate failed");
  error = EINVAL;
  goto err_deref;
 }

 *objp = obj;
 return 0;

err_deref:
 NMG_LOCK();
 priv->np_refs--;
err_unlock:
 NMG_UNLOCK();

 free(vmh, M_DEVBUF);
 return error;
}
