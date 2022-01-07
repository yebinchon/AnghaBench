
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int
search_string(char *data, int dlen, const char *search_str)
{
 int i, j, k;
 int search_str_len;

 search_str_len = strlen(search_str);
 for (i = 0; i < dlen - search_str_len; i++) {
  for (j = i, k = 0; j < dlen - search_str_len; j++, k++) {
   if (data[j] != search_str[k] &&
       data[j] != search_str[k] - ('a' - 'A')) {
    break;
   }
   if (k == search_str_len - 1) {
    return (j + 1);
   }
  }
 }
 return (-1);
}
