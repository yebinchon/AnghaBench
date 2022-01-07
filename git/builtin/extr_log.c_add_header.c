
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; } ;


 int extra_cc ;
 int extra_hdr ;
 int extra_to ;
 struct string_list_item* string_list_append (int *,char const*) ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static void add_header(const char *value)
{
 struct string_list_item *item;
 int len = strlen(value);
 while (len && value[len - 1] == '\n')
  len--;

 if (!strncasecmp(value, "to: ", 4)) {
  item = string_list_append(&extra_to, value + 4);
  len -= 4;
 } else if (!strncasecmp(value, "cc: ", 4)) {
  item = string_list_append(&extra_cc, value + 4);
  len -= 4;
 } else {
  item = string_list_append(&extra_hdr, value);
 }

 item->string[len] = '\0';
}
