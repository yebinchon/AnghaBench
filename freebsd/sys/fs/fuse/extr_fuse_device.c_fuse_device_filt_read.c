
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_data; int kn_fflags; int kn_flags; scalar_t__ kn_hook; } ;
struct fuse_data {int ms_count; int ms_head; int ms_mtx; } ;


 int ENODEV ;
 int EV_EOF ;
 int MA_OWNED ;
 int MPASS (int) ;
 scalar_t__ STAILQ_FIRST (int *) ;
 scalar_t__ fdata_get_dead (struct fuse_data*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
fuse_device_filt_read(struct knote *kn, long hint)
{
 struct fuse_data *data;
 int ready;

 data = (struct fuse_data*)kn->kn_hook;
 MPASS(data != ((void*)0));

 mtx_assert(&data->ms_mtx, MA_OWNED);
 if (fdata_get_dead(data)) {
  kn->kn_flags |= EV_EOF;
  kn->kn_fflags = ENODEV;
  kn->kn_data = 1;
  ready = 1;
 } else if (STAILQ_FIRST(&data->ms_head)) {
  MPASS(data->ms_count >= 1);
  kn->kn_data = data->ms_count;
  ready = 1;
 } else {
  ready = 0;
 }

 return (ready);
}
