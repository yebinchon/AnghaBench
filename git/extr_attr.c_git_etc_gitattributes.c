
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETC_GITATTRIBUTES ;
 char* system_path (int ) ;

__attribute__((used)) static const char *git_etc_gitattributes(void)
{
 static const char *system_wide;
 if (!system_wide)
  system_wide = system_path(ETC_GITATTRIBUTES);
 return system_wide;
}
