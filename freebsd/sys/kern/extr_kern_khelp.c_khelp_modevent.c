
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct khelp_modevent_data {char* name; TYPE_1__* helper; int nhooks; int hooks; int umadtor; int umactor; int uma_zsize; } ;
typedef int module_t ;
struct TYPE_3__ {int h_flags; int (* mod_init ) () ;int h_refcount; int (* mod_destroy ) () ;int * h_zone; int h_nhooks; int h_hooks; int h_name; } ;


 int EBUSY ;
 int EDOOFUS ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int HELPER_NAME_MAXLEN ;
 int HELPER_NEEDS_OSD ;




 int khelp_deregister_helper (TYPE_1__*) ;
 int khelp_register_helper (TYPE_1__*) ;
 int printf (char*,...) ;
 int strlcpy (int ,char*,int ) ;
 int stub1 () ;
 int stub2 () ;
 int * uma_zcreate (char*,int ,int ,int ,int *,int *,int ,int ) ;
 int uma_zdestroy (int *) ;

int
khelp_modevent(module_t mod, int event_type, void *data)
{
 struct khelp_modevent_data *kmd;
 int error;

 kmd = (struct khelp_modevent_data *)data;
 error = 0;

 switch(event_type) {
 case 131:
  if (kmd->helper->h_flags & HELPER_NEEDS_OSD) {
   if (kmd->uma_zsize <= 0) {
    printf("Use KHELP_DECLARE_MOD_UMA() instead!\n");
    error = EDOOFUS;
    break;
   }
   kmd->helper->h_zone = uma_zcreate(kmd->name,
       kmd->uma_zsize, kmd->umactor, kmd->umadtor, ((void*)0),
       ((void*)0), 0, 0);
   if (kmd->helper->h_zone == ((void*)0)) {
    error = ENOMEM;
    break;
   }
  }
  strlcpy(kmd->helper->h_name, kmd->name, HELPER_NAME_MAXLEN);
  kmd->helper->h_hooks = kmd->hooks;
  kmd->helper->h_nhooks = kmd->nhooks;
  if (kmd->helper->mod_init != ((void*)0))
   error = kmd->helper->mod_init();
  if (!error)
   error = khelp_register_helper(kmd->helper);
  break;

 case 130:
 case 129:
 case 128:
  error = khelp_deregister_helper(kmd->helper);
  if (!error) {
   if (kmd->helper->h_flags & HELPER_NEEDS_OSD)
    uma_zdestroy(kmd->helper->h_zone);
   if (kmd->helper->mod_destroy != ((void*)0))
    kmd->helper->mod_destroy();
  } else if (error == ENOENT)

   error = 0;
  else if (error == EBUSY)
   printf("Khelp module \"%s\" can't unload until its "
       "refcount drops from %d to 0.\n", kmd->name,
       kmd->helper->h_refcount);
  break;

 default:
  error = EINVAL;
  break;
 }

 return (error);
}
