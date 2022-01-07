
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct fuse_data {int ref; int rename_lock; int daemon_timeout; int daemoncred; int aw_head; int aw_mtx; int ms_mtx; TYPE_1__ ks_rsel; scalar_t__ ms_count; int ms_head; struct cdev* fdev; } ;
struct cdev {int dummy; } ;


 int FUSE_DEFAULT_DAEMON_TIMEOUT ;
 int MTX_DEF ;
 int M_FUSEMSG ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int crhold (struct ucred*) ;
 int knlist_init_mtx (int *,int *) ;
 struct fuse_data* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_init (int *,char*) ;

struct fuse_data *
fdata_alloc(struct cdev *fdev, struct ucred *cred)
{
 struct fuse_data *data;

 data = malloc(sizeof(struct fuse_data), M_FUSEMSG, M_WAITOK | M_ZERO);

 data->fdev = fdev;
 mtx_init(&data->ms_mtx, "fuse message list mutex", ((void*)0), MTX_DEF);
 STAILQ_INIT(&data->ms_head);
 data->ms_count = 0;
 knlist_init_mtx(&data->ks_rsel.si_note, &data->ms_mtx);
 mtx_init(&data->aw_mtx, "fuse answer list mutex", ((void*)0), MTX_DEF);
 TAILQ_INIT(&data->aw_head);
 data->daemoncred = crhold(cred);
 data->daemon_timeout = FUSE_DEFAULT_DAEMON_TIMEOUT;
 sx_init(&data->rename_lock, "fuse rename lock");
 data->ref = 1;

 return data;
}
