
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_preselect {int app_mask; } ;
struct audit_pipe {int ap_preselect_mode; int ap_preselect_flags; int ap_preselect_naflags; } ;
typedef int au_id_t ;
typedef int au_event_t ;
typedef int au_class_t ;




 int AUDIT_PIPE_LOCK_ASSERT (struct audit_pipe*) ;
 int AU_DEFAUDITID ;
 int au_preselect (int ,int ,int *,int) ;
 struct audit_pipe_preselect* audit_pipe_preselect_find (struct audit_pipe*,int ) ;
 int panic (char*,int) ;

__attribute__((used)) static int
audit_pipe_preselect_check(struct audit_pipe *ap, au_id_t auid,
    au_event_t event, au_class_t class, int sorf, int trail_preselect)
{
 struct audit_pipe_preselect *app;

 AUDIT_PIPE_LOCK_ASSERT(ap);

 switch (ap->ap_preselect_mode) {
 case 128:
  return (trail_preselect);

 case 129:
  app = audit_pipe_preselect_find(ap, auid);
  if (app == ((void*)0)) {
   if (auid == AU_DEFAUDITID)
    return (au_preselect(event, class,
        &ap->ap_preselect_naflags, sorf));
   else
    return (au_preselect(event, class,
        &ap->ap_preselect_flags, sorf));
  } else
   return (au_preselect(event, class, &app->app_mask,
       sorf));

 default:
  panic("audit_pipe_preselect_check: mode %d",
      ap->ap_preselect_mode);
 }

 return (0);
}
