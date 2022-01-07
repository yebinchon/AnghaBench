
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct grep_opt {struct string_list* output_priv; } ;


 int string_list_append (struct string_list*,int ) ;
 int xstrndup (void const*,size_t) ;

__attribute__((used)) static void append_path(struct grep_opt *opt, const void *data, size_t len)
{
 struct string_list *path_list = opt->output_priv;

 if (len == 1 && *(const char *)data == '\0')
  return;
 string_list_append(path_list, xstrndup(data, len));
}
