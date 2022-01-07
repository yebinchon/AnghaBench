
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int letter; int * name; } ;
typedef TYPE_1__ option_t ;
struct TYPE_7__ {TYPE_1__* fs_options; TYPE_3__* fs_specific; } ;
typedef TYPE_2__ fsinfo_t ;
struct TYPE_8__ {int optimization; } ;
typedef TYPE_3__ ffs_opt_t ;
typedef int buf ;


 int DEBUG_FS_PARSE_OPTS ;
 int FS_OPTSPACE ;
 int FS_OPTTIME ;
 int abort () ;
 int assert (int ) ;
 int debug ;
 int printf (char*,char const*) ;
 int set_option (TYPE_1__*,char const*,char*,int) ;
 int strcmp (char*,char*) ;
 int warnx (char*,char*) ;

int
ffs_parse_opts(const char *option, fsinfo_t *fsopts)
{
 ffs_opt_t *ffs_opts = fsopts->fs_specific;
 option_t *ffs_options = fsopts->fs_options;
 char buf[1024];

 int rv;

 assert(option != ((void*)0));
 assert(fsopts != ((void*)0));
 assert(ffs_opts != ((void*)0));

 if (debug & DEBUG_FS_PARSE_OPTS)
  printf("ffs_parse_opts: got `%s'\n", option);

 rv = set_option(ffs_options, option, buf, sizeof(buf));
 if (rv == -1)
  return 0;

 if (ffs_options[rv].name == ((void*)0))
  abort();

 switch (ffs_options[rv].letter) {
 case 'o':
  if (strcmp(buf, "time") == 0) {
   ffs_opts->optimization = FS_OPTTIME;
  } else if (strcmp(buf, "space") == 0) {
   ffs_opts->optimization = FS_OPTSPACE;
  } else {
   warnx("Invalid optimization `%s'", buf);
   return 0;
  }
  break;
 default:
  break;
 }
 return 1;
}
