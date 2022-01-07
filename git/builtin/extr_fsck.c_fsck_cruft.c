
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int fprintf_ln (int ,int ,char const*) ;
 int starts_with (char const*,char*) ;
 int stderr ;

__attribute__((used)) static int fsck_cruft(const char *basename, const char *path, void *data)
{
 if (!starts_with(basename, "tmp_obj_"))
  fprintf_ln(stderr, _("bad sha1 file: %s"), path);
 return 0;
}
