
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 scalar_t__ GKT_RUN ;
 int PRIBIO ;
 struct bio* bioq_takefirst (int *) ;
 int g_multipath_done_error (struct bio*) ;
 scalar_t__ g_multipath_kt_state ;
 int gmtbq ;
 int gmtbq_mtx ;
 int kproc_exit (int ) ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
g_multipath_kt(void *arg)
{

 g_multipath_kt_state = GKT_RUN;
 mtx_lock(&gmtbq_mtx);
 while (g_multipath_kt_state == GKT_RUN) {
  for (;;) {
   struct bio *bp;

   bp = bioq_takefirst(&gmtbq);
   if (bp == ((void*)0))
    break;
   mtx_unlock(&gmtbq_mtx);
   g_multipath_done_error(bp);
   mtx_lock(&gmtbq_mtx);
  }
  if (g_multipath_kt_state != GKT_RUN)
   break;
  msleep(&g_multipath_kt_state, &gmtbq_mtx, PRIBIO,
      "gkt:wait", 0);
 }
 mtx_unlock(&gmtbq_mtx);
 wakeup(&g_multipath_kt_state);
 kproc_exit(0);
}
