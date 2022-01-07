
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,char*) ;
 char* find_last_dir_sep (char*) ;
 int free (char*) ;
 int strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int chop_last_dir(char **remoteurl, int is_relative)
{
 char *rfind = find_last_dir_sep(*remoteurl);
 if (rfind) {
  *rfind = '\0';
  return 0;
 }

 rfind = strrchr(*remoteurl, ':');
 if (rfind) {
  *rfind = '\0';
  return 1;
 }

 if (is_relative || !strcmp(".", *remoteurl))
  die(_("cannot strip one component off url '%s'"),
   *remoteurl);

 free(*remoteurl);
 *remoteurl = xstrdup(".");
 return 0;
}
