
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_hh00 {int post; int error; struct g_class* mp; } ;
struct g_class {scalar_t__ version; char* name; int geom; } ;
typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int G_T_TOPOLOGY ;
 scalar_t__ G_VERSION ;
 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;


 int M_WAITOK ;
 int M_ZERO ;
 int cold ;
 int g_free (struct g_hh00*) ;
 int g_init () ;
 int g_load_class ;
 struct g_hh00* g_malloc (int,int) ;
 int g_post_event (int ,struct g_hh00*,int,int *) ;
 int g_trace (int ,char*,char*) ;
 int g_unload_class (struct g_class*) ;
 int g_waitfor_event (int ,struct g_hh00*,int,int *) ;
 int printf (char*,char*,scalar_t__) ;

int
g_modevent(module_t mod, int type, void *data)
{
 struct g_hh00 *hh;
 int error;
 static int g_ignition;
 struct g_class *mp;

 mp = data;
 if (mp->version != G_VERSION) {
  printf("GEOM class %s has Wrong version %x\n",
      mp->name, mp->version);
  return (EINVAL);
 }
 if (!g_ignition) {
  g_ignition++;
  g_init();
 }
 error = EOPNOTSUPP;
 switch (type) {
 case 129:
  g_trace(G_T_TOPOLOGY, "g_modevent(%s, LOAD)", mp->name);
  hh = g_malloc(sizeof *hh, M_WAITOK | M_ZERO);
  hh->mp = mp;





  if (cold) {
   hh->post = 1;
   error = g_post_event(g_load_class, hh, M_WAITOK, ((void*)0));
  } else {
   error = g_waitfor_event(g_load_class, hh, M_WAITOK,
       ((void*)0));
   if (error == 0)
    error = hh->error;
   g_free(hh);
  }
  break;
 case 128:
  g_trace(G_T_TOPOLOGY, "g_modevent(%s, UNLOAD)", mp->name);
  error = g_unload_class(mp);
  if (error == 0) {
   KASSERT(LIST_EMPTY(&mp->geom),
       ("Unloaded class (%s) still has geom", mp->name));
  }
  break;
 }
 return (error);
}
