
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fuse_ticket {int tk_flag; TYPE_1__* tk_data; } ;
struct TYPE_5__ {int si_note; } ;
struct TYPE_4__ {int ms_mtx; TYPE_2__ ks_rsel; } ;


 int FT_DIRTY ;
 int KNOTE_LOCKED (int *,int ) ;
 scalar_t__ PZERO ;
 scalar_t__ fdata_get_dead (TYPE_1__*) ;
 int fuse_lck_mtx_lock (int ) ;
 int fuse_lck_mtx_unlock (int ) ;
 int fuse_ms_push (struct fuse_ticket*) ;
 int fuse_ms_push_head (struct fuse_ticket*) ;
 int panic (char*) ;
 int selwakeuppri (TYPE_2__*,scalar_t__) ;
 int wakeup_one (TYPE_1__*) ;

void
fuse_insert_message(struct fuse_ticket *ftick, bool urgent)
{
 if (ftick->tk_flag & FT_DIRTY) {
  panic("FUSE: ticket reused without being refreshed");
 }
 ftick->tk_flag |= FT_DIRTY;

 if (fdata_get_dead(ftick->tk_data)) {
  return;
 }
 fuse_lck_mtx_lock(ftick->tk_data->ms_mtx);
 if (urgent)
  fuse_ms_push_head(ftick);
 else
  fuse_ms_push(ftick);
 wakeup_one(ftick->tk_data);
 selwakeuppri(&ftick->tk_data->ks_rsel, PZERO + 1);
 KNOTE_LOCKED(&ftick->tk_data->ks_rsel.si_note, 0);
 fuse_lck_mtx_unlock(ftick->tk_data->ms_mtx);
}
