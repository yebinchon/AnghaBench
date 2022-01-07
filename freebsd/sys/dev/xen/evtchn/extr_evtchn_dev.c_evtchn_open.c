
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct per_user_data {struct per_user_data* ring; int ring_cons_mutex; int ring_prod_mutex; int bind_mutex; int evtchns; } ;
struct cdev {int dummy; } ;


 int MTX_DEF ;
 int M_EVTCHN ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int RB_INIT (int *) ;
 int devfs_set_cdevpriv (struct per_user_data*,int ) ;
 int evtchn_release ;
 int free (struct per_user_data*,int ) ;
 void* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
evtchn_open(struct cdev *dev, int flag, int otyp, struct thread *td)
{
 struct per_user_data *u;
 int error;

 u = malloc(sizeof(*u), M_EVTCHN, M_WAITOK | M_ZERO);
 u->ring = malloc(PAGE_SIZE, M_EVTCHN, M_WAITOK | M_ZERO);


 mtx_init(&u->bind_mutex, "evtchn_bind_mutex", ((void*)0), MTX_DEF);
 sx_init(&u->ring_cons_mutex, "evtchn_ringc_sx");
 mtx_init(&u->ring_prod_mutex, "evtchn_ringp_mutex", ((void*)0), MTX_DEF);


 RB_INIT(&u->evtchns);


 error = devfs_set_cdevpriv(u, evtchn_release);
 if (error != 0) {
  mtx_destroy(&u->bind_mutex);
  mtx_destroy(&u->ring_prod_mutex);
  sx_destroy(&u->ring_cons_mutex);
  free(u->ring, M_EVTCHN);
  free(u, M_EVTCHN);
 }

 return (error);
}
