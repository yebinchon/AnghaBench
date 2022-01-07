
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int G_SCHED_DEBUG (int ,char*,struct g_class*,int *) ;
 int g_classifier_ini () ;
 int g_gsched_global_init () ;
 int g_sched_class ;

__attribute__((used)) static void
g_sched_init(struct g_class *mp)
{

 g_gsched_global_init();

 G_SCHED_DEBUG(0, "Loading: mp = %p, g_sched_class = %p.",
     mp, &g_sched_class);


 g_classifier_ini();
}
