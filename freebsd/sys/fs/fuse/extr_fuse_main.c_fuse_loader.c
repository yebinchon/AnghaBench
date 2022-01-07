
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int * eventhandler_tag ;


 int EINVAL ;


 int MTX_DEF ;
 int fuse_bringdown (int *) ;
 int fuse_device_init () ;
 int fuse_file_init () ;
 int fuse_internal_init () ;
 int fuse_ipc_init () ;
 int fuse_mtx ;
 int fuse_node_init () ;
 int fuse_pbuf_zone ;
 int fuse_vfsconf ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nswbuf ;
 int pbuf_zsecond_create (char*,int) ;
 int uma_zdestroy (int ) ;
 int vfs_modevent (int *,int,int *) ;

__attribute__((used)) static int
fuse_loader(struct module *m, int what, void *arg)
{
 static eventhandler_tag eh_tag = ((void*)0);
 int err = 0;

 switch (what) {
 case 129:
  mtx_init(&fuse_mtx, "fuse_mtx", ((void*)0), MTX_DEF);
  err = fuse_device_init();
  if (err) {
   mtx_destroy(&fuse_mtx);
   return (err);
  }
  fuse_ipc_init();
  fuse_file_init();
  fuse_internal_init();
  fuse_node_init();
  fuse_pbuf_zone = pbuf_zsecond_create("fusepbuf", nswbuf / 2);


  if ((err = vfs_modevent(((void*)0), what, &fuse_vfsconf)))
   fuse_bringdown(eh_tag);
  break;
 case 128:
  if ((err = vfs_modevent(((void*)0), what, &fuse_vfsconf)))
   return (err);
  fuse_bringdown(eh_tag);
  uma_zdestroy(fuse_pbuf_zone);
  break;
 default:
  return (EINVAL);
 }

 return (err);
}
