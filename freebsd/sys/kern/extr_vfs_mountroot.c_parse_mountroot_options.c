
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntarg {int dummy; } ;


 int M_MOUNT ;
 int free (char*,int ) ;
 struct mntarg* mount_arg (struct mntarg*,char*,char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static struct mntarg *
parse_mountroot_options(struct mntarg *ma, const char *options)
{
 char *p;
 char *name, *name_arg;
 char *val, *val_arg;
 char *opts;

 if (options == ((void*)0) || options[0] == '\0')
  return (ma);

 p = opts = strdup(options, M_MOUNT);
 if (opts == ((void*)0)) {
  return (ma);
 }

 while((name = strsep(&p, ",")) != ((void*)0)) {
  if (name[0] == '\0')
   break;

  val = strchr(name, '=');
  if (val != ((void*)0)) {
   *val = '\0';
   ++val;
  }
  if( strcmp(name, "rw") == 0 ||
      strcmp(name, "noro") == 0) {





   continue;
  }
  name_arg = strdup(name, M_MOUNT);
  val_arg = ((void*)0);
  if (val != ((void*)0))
   val_arg = strdup(val, M_MOUNT);

  ma = mount_arg(ma, name_arg, val_arg,
      (val_arg != ((void*)0) ? -1 : 0));
 }
 free(opts, M_MOUNT);
 return (ma);
}
