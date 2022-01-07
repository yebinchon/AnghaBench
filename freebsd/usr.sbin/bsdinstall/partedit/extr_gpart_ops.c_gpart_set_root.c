
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int gctl_free (struct gctl_req*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char const*) ;
 int gpart_show_error (char*,char*,char const*) ;

void
gpart_set_root(const char *lg_name, const char *attribute)
{
 struct gctl_req *r;
 const char *errstr;

 r = gctl_get_handle();
 gctl_ro_param(r, "class", -1, "PART");
 gctl_ro_param(r, "arg0", -1, lg_name);
 gctl_ro_param(r, "flags", -1, "C");
 gctl_ro_param(r, "verb", -1, "set");
 gctl_ro_param(r, "attrib", -1, attribute);

 errstr = gctl_issue(r);
 if (errstr != ((void*)0) && errstr[0] != '\0')
  gpart_show_error("Error", "Error setting parameter on disk:",
      errstr);
 gctl_free(r);
}
