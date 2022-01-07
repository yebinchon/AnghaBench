
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct msdos_options {int volume_id_set; int media_descriptor_set; int hidden_sectors_set; int timestamp_set; int timestamp; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ option_t ;
struct TYPE_7__ {TYPE_1__* fs_options; struct msdos_options* fs_specific; } ;
typedef TYPE_2__ fsinfo_t ;
struct TYPE_8__ {int st_mtime; scalar_t__ st_ino; } ;


 int DEBUG_FS_PARSE_OPTS ;
 int assert (int ) ;
 int debug ;
 int printf (char*,char const*) ;
 int set_option (TYPE_1__*,char const*,int *,int ) ;
 TYPE_3__ stampst ;
 scalar_t__ strcmp (int ,char*) ;

int
msdos_parse_opts(const char *option, fsinfo_t *fsopts)
{
 struct msdos_options *msdos_opt = fsopts->fs_specific;
 option_t *msdos_options = fsopts->fs_options;
 int rv;

 assert(option != ((void*)0));
 assert(fsopts != ((void*)0));
 assert(msdos_opt != ((void*)0));

 if (debug & DEBUG_FS_PARSE_OPTS)
  printf("msdos_parse_opts: got `%s'\n", option);

 rv = set_option(msdos_options, option, ((void*)0), 0);
 if (rv == -1)
  return rv;

 if (strcmp(msdos_options[rv].name, "volume_id") == 0)
  msdos_opt->volume_id_set = 1;
 else if (strcmp(msdos_options[rv].name, "media_descriptor") == 0)
  msdos_opt->media_descriptor_set = 1;
 else if (strcmp(msdos_options[rv].name, "hidden_sectors") == 0)
  msdos_opt->hidden_sectors_set = 1;

 if (stampst.st_ino) {
  msdos_opt->timestamp_set = 1;
  msdos_opt->timestamp = stampst.st_mtime;
 }

 return 1;
}
