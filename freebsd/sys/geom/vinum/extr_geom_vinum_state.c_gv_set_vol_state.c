
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int state; int vinumconf; int provider; } ;


 int GV_ERR_ISBUSY ;
 int GV_ERR_SETSTATE ;
 int GV_SETSTATE_CONFIG ;
 int GV_SETSTATE_FORCE ;


 int KASSERT (int ,char*) ;
 int gv_provider_is_open (int ) ;
 int gv_save_config (int ) ;
 int gv_update_vol_state (struct gv_volume*) ;

int
gv_set_vol_state(struct gv_volume *v, int newstate, int flags)
{
 int oldstate;

 KASSERT(v != ((void*)0), ("gv_set_vol_state: NULL v"));

 oldstate = v->state;

 if (newstate == oldstate)
  return (0);

 switch (newstate) {
 case 128:

  gv_update_vol_state(v);
  if (v->state != 128 && !(flags & GV_SETSTATE_FORCE))
   return (GV_ERR_SETSTATE);
  v->state = newstate;
  break;
 case 129:




  if (!gv_provider_is_open(v->provider) &&
      !(flags & GV_SETSTATE_FORCE))
   return (GV_ERR_ISBUSY);
  v->state = newstate;
  break;
 }

 if (flags & GV_SETSTATE_CONFIG)
  gv_save_config(v->vinumconf);
 return (0);
}
