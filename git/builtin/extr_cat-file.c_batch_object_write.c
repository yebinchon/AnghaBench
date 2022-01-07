
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct expand_data {int oid; int info; int skip_object_info; } ;
struct batch_options {scalar_t__ print_contents; int format; } ;


 int OBJECT_INFO_LOOKUP_REPLACE ;
 int batch_write (struct batch_options*,char*,int) ;
 int expand_format ;
 int fflush (int ) ;
 scalar_t__ oid_object_info_extended (int ,int *,int *,int ) ;
 char* oid_to_hex (int *) ;
 int print_object_or_die (struct batch_options*,struct expand_data*) ;
 int printf (char*,char const*) ;
 int stdout ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_expand (struct strbuf*,int ,int ,struct expand_data*) ;
 int strbuf_reset (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static void batch_object_write(const char *obj_name,
          struct strbuf *scratch,
          struct batch_options *opt,
          struct expand_data *data)
{
 if (!data->skip_object_info &&
     oid_object_info_extended(the_repository, &data->oid, &data->info,
         OBJECT_INFO_LOOKUP_REPLACE) < 0) {
  printf("%s missing\n",
         obj_name ? obj_name : oid_to_hex(&data->oid));
  fflush(stdout);
  return;
 }

 strbuf_reset(scratch);
 strbuf_expand(scratch, opt->format, expand_format, data);
 strbuf_addch(scratch, '\n');
 batch_write(opt, scratch->buf, scratch->len);

 if (opt->print_contents) {
  print_object_or_die(opt, data);
  batch_write(opt, "\n", 1);
 }
}
