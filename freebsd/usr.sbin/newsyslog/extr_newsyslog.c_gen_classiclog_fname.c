
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char const*,...) ;

__attribute__((used)) static void
gen_classiclog_fname(char *fname, size_t fname_sz, const char *archive_dir,
    const char *namepart, int numlogs_c)
{

 if (archive_dir[0] != '\0')
  (void) snprintf(fname, fname_sz, "%s/%s.%d", archive_dir,
      namepart, numlogs_c);
 else
  (void) snprintf(fname, fname_sz, "%s.%d", namepart, numlogs_c);
}
