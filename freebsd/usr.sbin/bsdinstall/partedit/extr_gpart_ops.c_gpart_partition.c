
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gctl_req {int dummy; } ;
struct TYPE_4__ {int defaultno; } ;
struct TYPE_3__ {int bootcode; } ;


 int FALSE ;
 char* GPART_FLAGS ;
 int TRUE ;
 int * bootcode_path (char const*) ;
 char* choose_part_type (int ) ;
 int default_scheme () ;
 TYPE_2__ dialog_vars ;
 int dialog_yesno (char*,char*,int ,int ) ;
 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char const*) ;
 TYPE_1__* get_part_metadata (char const*,int) ;
 int gpart_show_error (char*,int *,char const*) ;
 int is_scheme_bootable (char const*) ;
 int sprintf (char*,char*,char const*) ;

int
gpart_partition(const char *lg_name, const char *scheme)
{
 int cancel;
 struct gctl_req *r;
 const char *errstr;

schememenu:
 if (scheme == ((void*)0)) {
  scheme = choose_part_type(default_scheme());

  if (scheme == ((void*)0))
   return (-1);

  if (!is_scheme_bootable(scheme)) {
   char message[512];
   sprintf(message, "This partition scheme (%s) is not "
       "bootable on this platform. Are you sure you want "
       "to proceed?", scheme);
   dialog_vars.defaultno = TRUE;
   cancel = dialog_yesno("Warning", message, 0, 0);
   dialog_vars.defaultno = FALSE;
   if (cancel) {

    scheme = ((void*)0);
    goto schememenu;
   }
  }
 }

 r = gctl_get_handle();
 gctl_ro_param(r, "class", -1, "PART");
 gctl_ro_param(r, "arg0", -1, lg_name);
 gctl_ro_param(r, "flags", -1, GPART_FLAGS);
 gctl_ro_param(r, "scheme", -1, scheme);
 gctl_ro_param(r, "verb", -1, "create");

 errstr = gctl_issue(r);
 if (errstr != ((void*)0) && errstr[0] != '\0') {
  gpart_show_error("Error", ((void*)0), errstr);
  gctl_free(r);
  scheme = ((void*)0);
  goto schememenu;
 }
 gctl_free(r);

 if (bootcode_path(scheme) != ((void*)0))
  get_part_metadata(lg_name, 1)->bootcode = 1;
 return (0);
}
