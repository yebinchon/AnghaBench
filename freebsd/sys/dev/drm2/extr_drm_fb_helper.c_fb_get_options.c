
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tunable ;


 int DRM_INFO (char*,...) ;
 int ENOENT ;
 char* kern_getenv (char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
fb_get_options(const char *connector_name, char **option)
{
 char tunable[64];
 snprintf(tunable, sizeof(tunable), "kern.vt.fb.modes.%s",
     connector_name);
 DRM_INFO("Connector %s: get mode from tunables:\n", connector_name);
 DRM_INFO("  - %s\n", tunable);
 DRM_INFO("  - kern.vt.fb.default_mode\n");
 *option = kern_getenv(tunable);
 if (*option == ((void*)0))
  *option = kern_getenv("kern.vt.fb.default_mode");

 return (*option != ((void*)0) ? 0 : -ENOENT);
}
