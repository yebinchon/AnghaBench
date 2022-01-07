
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int dummy; } ;
struct fuse_data {int dataflags; int ticketer; } ;


 int FSESS_INITED ;
 int FUSE_LOCK () ;
 int FUSE_UNLOCK () ;
 int PCATCH ;
 int PDROP ;
 int fdata_set_dead (struct fuse_data*) ;
 struct fuse_ticket* fticket_alloc (struct fuse_data*) ;
 int fuse_mtx ;
 int msleep (int*,int *,int,char*,int ) ;

struct fuse_ticket *
fuse_ticket_fetch(struct fuse_data *data)
{
 int err = 0;
 struct fuse_ticket *ftick;

 ftick = fticket_alloc(data);

 if (!(data->dataflags & FSESS_INITED)) {

  FUSE_LOCK();
  if (!(data->dataflags & FSESS_INITED) && data->ticketer > 2) {
   err = msleep(&data->ticketer, &fuse_mtx, PCATCH | PDROP,
       "fu_ini", 0);
   if (err)
    fdata_set_dead(data);
  } else
   FUSE_UNLOCK();
 }
 return ftick;
}
