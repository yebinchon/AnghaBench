
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int git_path_bisect_log () ;
 int sq_quote_argv (struct strbuf*,char const**) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int bisect_append_log_quoted(const char **argv)
{
 int retval = 0;
 FILE *fp = fopen(git_path_bisect_log(), "a");
 struct strbuf orig_args = STRBUF_INIT;

 if (!fp)
  return -1;

 if (fprintf(fp, "git bisect start") < 1) {
  retval = -1;
  goto finish;
 }

 sq_quote_argv(&orig_args, argv);
 if (fprintf(fp, "%s\n", orig_args.buf) < 1)
  retval = -1;

finish:
 fclose(fp);
 strbuf_release(&orig_args);
 return retval;
}
