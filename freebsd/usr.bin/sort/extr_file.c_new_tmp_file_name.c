
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getpid () ;
 char* sort_malloc (size_t) ;
 int sprintf (char*,char*,char*,char const*,int,unsigned long) ;
 int strlen (char const*) ;
 int tmp_file_atexit (char*) ;
 char* tmpdir ;

char *
new_tmp_file_name(void)
{
 static size_t tfcounter = 0;
 static const char *fn = ".bsdsort.";
 char *ret;
 size_t sz;

 sz = strlen(tmpdir) + 1 + strlen(fn) + 32 + 1;
 ret = sort_malloc(sz);

 sprintf(ret, "%s/%s%d.%lu", tmpdir, fn, (int) getpid(), (unsigned long)(tfcounter++));
 tmp_file_atexit(ret);
 return (ret);
}
