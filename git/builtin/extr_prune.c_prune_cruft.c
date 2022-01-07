
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int prune_tmp_file (char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int stderr ;

__attribute__((used)) static int prune_cruft(const char *basename, const char *path, void *data)
{
 if (starts_with(basename, "tmp_obj_"))
  prune_tmp_file(path);
 else
  fprintf(stderr, "bad sha1 file: %s\n", path);
 return 0;
}
