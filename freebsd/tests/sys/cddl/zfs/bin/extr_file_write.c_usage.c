
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_RANGE ;
 char* basename (char*) ;
 scalar_t__ execname ;
 int exit (int) ;
 int free (char*) ;
 int printf (char*,char*,int) ;
 char* strdup (char*) ;

__attribute__((used)) static void
usage(void)
{
 char *base = (char *)"file_write";
 char *exec = (char *)execname;

 if (exec != ((void*)0))
  exec = strdup(exec);
 if (exec != ((void*)0))
  base = basename(exec);

 (void) printf("Usage: %s [-v] -o {create,overwrite,append} -f file_name"
     " [-b block_size]\n"
     "\t[-s offset] [-c write_count] [-d data]\n"
     "\twhere [data] equal to zero causes chars "
     "0->%d to be repeated throughout\n", base, DATA_RANGE);

 if (exec) {
  free(exec);
 }

 exit(1);
}
