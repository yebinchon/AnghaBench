
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eventhandler_tag ;


 int fuse_device_destroy () ;
 int fuse_file_destroy () ;
 int fuse_internal_destroy () ;
 int fuse_ipc_destroy () ;
 int fuse_mtx ;
 int fuse_node_destroy () ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
fuse_bringdown(eventhandler_tag eh_tag)
{
 fuse_node_destroy();
 fuse_internal_destroy();
 fuse_file_destroy();
 fuse_ipc_destroy();
 fuse_device_destroy();
 mtx_destroy(&fuse_mtx);
}
