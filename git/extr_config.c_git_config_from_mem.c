
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* buf; size_t len; scalar_t__ pos; } ;
struct TYPE_3__ {TYPE_2__ buf; } ;
struct config_source {int origin_type; char const* name; int do_ftell; int do_ungetc; int do_fgetc; int default_error_action; int * path; TYPE_1__ u; } ;
struct config_options {int dummy; } ;
typedef enum config_origin_type { ____Placeholder_config_origin_type } config_origin_type ;
typedef int config_fn_t ;


 int CONFIG_ERROR_ERROR ;
 int config_buf_fgetc ;
 int config_buf_ftell ;
 int config_buf_ungetc ;
 int do_config_from (struct config_source*,int ,void*,struct config_options const*) ;

int git_config_from_mem(config_fn_t fn,
   const enum config_origin_type origin_type,
   const char *name, const char *buf, size_t len,
   void *data, const struct config_options *opts)
{
 struct config_source top;

 top.u.buf.buf = buf;
 top.u.buf.len = len;
 top.u.buf.pos = 0;
 top.origin_type = origin_type;
 top.name = name;
 top.path = ((void*)0);
 top.default_error_action = CONFIG_ERROR_ERROR;
 top.do_fgetc = config_buf_fgetc;
 top.do_ungetc = config_buf_ungetc;
 top.do_ftell = config_buf_ftell;

 return do_config_from(&top, fn, data, opts);
}
