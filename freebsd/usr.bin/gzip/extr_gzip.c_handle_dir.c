
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fts_info; int fts_statp; int fts_path; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;







 int FTS_NOCHDIR ;

 int FTS_PHYSICAL ;
 int fts_close (int *) ;
 int * fts_open (char**,int,int *) ;
 TYPE_1__* fts_read (int *) ;
 int handle_file (int ,int ) ;
 int maybe_warn (char*,int ) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
handle_dir(char *dir)
{
 char *path_argv[2];
 FTS *fts;
 FTSENT *entry;

 path_argv[0] = dir;
 path_argv[1] = 0;
 fts = fts_open(path_argv, FTS_PHYSICAL | FTS_NOCHDIR, ((void*)0));
 if (fts == ((void*)0)) {
  warn("couldn't fts_open %s", dir);
  return;
 }

 while ((entry = fts_read(fts))) {
  switch(entry->fts_info) {
  case 133:
  case 131:
   continue;

  case 132:
  case 130:
  case 128:
   maybe_warn("%s", entry->fts_path);
   continue;
  case 129:
   handle_file(entry->fts_path, entry->fts_statp);
  }
 }
 (void)fts_close(fts);
}
