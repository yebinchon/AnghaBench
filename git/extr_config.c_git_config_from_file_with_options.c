
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_options {int dummy; } ;
typedef int config_fn_t ;
typedef int FILE ;


 int CONFIG_ORIGIN_FILE ;
 int do_config_from_file (int ,int ,char const*,char const*,int *,void*,struct config_options const*) ;
 int fclose (int *) ;
 int * fopen_or_warn (char const*,char*) ;

int git_config_from_file_with_options(config_fn_t fn, const char *filename,
          void *data,
          const struct config_options *opts)
{
 int ret = -1;
 FILE *f;

 f = fopen_or_warn(filename, "r");
 if (f) {
  ret = do_config_from_file(fn, CONFIG_ORIGIN_FILE, filename,
       filename, f, data, opts);
  fclose(f);
 }
 return ret;
}
