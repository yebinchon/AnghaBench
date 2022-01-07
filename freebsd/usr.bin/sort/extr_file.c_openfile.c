
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int FILE ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IWGRP ;
 int S_IWOTH ;
 char* compress_program ;
 int err (int,char*,...) ;
 int fflush (int *) ;
 int file_is_tmp (char const*) ;
 int * fopen (char const*,char const*) ;
 int getstr (int) ;
 int * popen (char*,char const*) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int sort_free (char*) ;
 char* sort_malloc (size_t) ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int umask (int) ;

FILE *
openfile(const char *fn, const char *mode)
{
 FILE *file;

 if (strcmp(fn, "-") == 0) {
  return ((mode && mode[0] == 'r') ? stdin : stdout);
 } else {
  mode_t orig_file_mask = 0;
  int is_tmp = file_is_tmp(fn);

  if (is_tmp && (mode[0] == 'w'))
   orig_file_mask = umask(S_IWGRP | S_IWOTH |
       S_IRGRP | S_IROTH);

  if (is_tmp && (compress_program != ((void*)0))) {
   char *cmd;
   size_t cmdsz;

   cmdsz = strlen(fn) + 128;
   cmd = sort_malloc(cmdsz);

   fflush(stdout);

   if (mode[0] == 'r')
    snprintf(cmd, cmdsz - 1, "cat %s | %s -d",
        fn, compress_program);
   else if (mode[0] == 'w')
    snprintf(cmd, cmdsz - 1, "%s > %s",
        compress_program, fn);
   else
    err(2, "%s", getstr(7));

   if ((file = popen(cmd, mode)) == ((void*)0))
    err(2, ((void*)0));

   sort_free(cmd);

  } else
   if ((file = fopen(fn, mode)) == ((void*)0))
    err(2, ((void*)0));

  if (is_tmp && (mode[0] == 'w'))
   umask(orig_file_mask);
 }

 return (file);
}
