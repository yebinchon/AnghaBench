
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_4__ {char* buf; int len; } ;
struct TYPE_3__ {int string; } ;


 char* find_header (char const*,int,char*,char const**) ;
 int free (char*) ;
 TYPE_2__ push_cert ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int check_cert_push_options(const struct string_list *push_options)
{
 const char *buf = push_cert.buf;
 int len = push_cert.len;

 char *option;
 const char *next_line;
 int options_seen = 0;

 int retval = 1;

 if (!len)
  return 1;

 while ((option = find_header(buf, len, "push-option", &next_line))) {
  len -= (next_line - buf);
  buf = next_line;
  options_seen++;
  if (options_seen > push_options->nr
      || strcmp(option,
         push_options->items[options_seen - 1].string)) {
   retval = 0;
   goto leave;
  }
  free(option);
 }

 if (options_seen != push_options->nr)
  retval = 0;

leave:
 free(option);
 return retval;
}
