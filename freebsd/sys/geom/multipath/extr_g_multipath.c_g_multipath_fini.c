
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 scalar_t__ GKT_DIE ;
 scalar_t__ GKT_RUN ;
 int PRIBIO ;
 scalar_t__ g_multipath_kt_state ;
 int gmtbq_mtx ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
g_multipath_fini(struct g_class *mp)
{
 if (g_multipath_kt_state == GKT_RUN) {
  mtx_lock(&gmtbq_mtx);
  g_multipath_kt_state = GKT_DIE;
  wakeup(&g_multipath_kt_state);
  msleep(&g_multipath_kt_state, &gmtbq_mtx, PRIBIO,
      "gmp:fini", 0);
  mtx_unlock(&gmtbq_mtx);
 }
}
