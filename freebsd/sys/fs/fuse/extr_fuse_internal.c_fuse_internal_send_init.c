
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fuse_init_in {int flags; int max_readahead; int minor; int major; } ;
struct fuse_dispatcher {int tick; struct fuse_init_in* indata; } ;
struct fuse_data {int mp; } ;


 int FUSE_ASYNC_READ ;
 int FUSE_BIG_WRITES ;
 int FUSE_EXPORT_SUPPORT ;
 int FUSE_INIT ;
 int FUSE_KERNEL_MINOR_VERSION ;
 int FUSE_KERNEL_VERSION ;
 int FUSE_POSIX_LOCKS ;
 int FUSE_WRITEBACK_CACHE ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make (struct fuse_dispatcher*,int ,int ,int ,struct thread*,int *) ;
 int fuse_insert_callback (int ,int ) ;
 int fuse_insert_message (int ,int) ;
 int fuse_internal_init_callback ;
 int maxbcachebuf ;

void
fuse_internal_send_init(struct fuse_data *data, struct thread *td)
{
 struct fuse_init_in *fiii;
 struct fuse_dispatcher fdi;

 fdisp_init(&fdi, sizeof(*fiii));
 fdisp_make(&fdi, FUSE_INIT, data->mp, 0, td, ((void*)0));
 fiii = fdi.indata;
 fiii->major = FUSE_KERNEL_VERSION;
 fiii->minor = FUSE_KERNEL_MINOR_VERSION;




 fiii->max_readahead = maxbcachebuf;
 fiii->flags = FUSE_ASYNC_READ | FUSE_POSIX_LOCKS | FUSE_EXPORT_SUPPORT
  | FUSE_BIG_WRITES | FUSE_WRITEBACK_CACHE;

 fuse_insert_callback(fdi.tick, fuse_internal_init_callback);
 fuse_insert_message(fdi.tick, 0);
 fdisp_destroy(&fdi);
}
