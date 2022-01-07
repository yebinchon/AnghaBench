
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * file; } ;
struct config_source {int origin_type; char const* name; char const* path; int do_ftell; int do_ungetc; int do_fgetc; int default_error_action; TYPE_1__ u; } ;
struct config_options {int dummy; } ;
typedef enum config_origin_type { ____Placeholder_config_origin_type } config_origin_type ;
typedef int config_fn_t ;
typedef int FILE ;


 int CONFIG_ERROR_DIE ;
 int config_file_fgetc ;
 int config_file_ftell ;
 int config_file_ungetc ;
 int do_config_from (struct config_source*,int ,void*,struct config_options const*) ;
 int flockfile (int *) ;
 int funlockfile (int *) ;

__attribute__((used)) static int do_config_from_file(config_fn_t fn,
  const enum config_origin_type origin_type,
  const char *name, const char *path, FILE *f,
  void *data, const struct config_options *opts)
{
 struct config_source top;
 int ret;

 top.u.file = f;
 top.origin_type = origin_type;
 top.name = name;
 top.path = path;
 top.default_error_action = CONFIG_ERROR_DIE;
 top.do_fgetc = config_file_fgetc;
 top.do_ungetc = config_file_ungetc;
 top.do_ftell = config_file_ftell;

 flockfile(f);
 ret = do_config_from(&top, fn, data, opts);
 funlockfile(f);
 return ret;
}
