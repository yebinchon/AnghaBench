
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gsched_unregparm {int gup_error; struct g_gsched* gup_gsp; } ;
struct g_gsched {int gs_name; } ;
typedef int module_t ;


 int EOPNOTSUPP ;
 int G_SCHED_DEBUG (int ,char*,int,...) ;


 int M_WAITOK ;
 int g_gsched_global_init () ;
 int g_gsched_register (struct g_gsched*) ;
 int g_gsched_unregister ;
 int g_retaste (int *) ;
 int g_sched_class ;
 int g_waitfor_event (int ,struct g_gsched_unregparm*,int ,int *) ;

int
g_gsched_modevent(module_t mod, int cmd, void *arg)
{
 struct g_gsched *gsp = arg;
 struct g_gsched_unregparm parm;
 int error;

 G_SCHED_DEBUG(0, "Modevent %d.", cmd);






 g_gsched_global_init();

 error = EOPNOTSUPP;
 switch (cmd) {
 case 129:
  error = g_gsched_register(gsp);
  G_SCHED_DEBUG(0, "Loaded module %s error %d.",
      gsp->gs_name, error);
  if (error == 0)
   g_retaste(&g_sched_class);
  break;

 case 128:
  parm.gup_gsp = gsp;
  parm.gup_error = 0;

  error = g_waitfor_event(g_gsched_unregister,
      &parm, M_WAITOK, ((void*)0));
  if (error == 0)
   error = parm.gup_error;
  G_SCHED_DEBUG(0, "Unloaded module %s error %d.",
      gsp->gs_name, error);
  break;
 }

 return (error);
}
