
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void
sanitize_envline(char *result, const char *src)
{
 const char *eq;
 char c, *dst;
 bool leading;


 if ((eq = strchr(src, '=')) == ((void*)0)) {
  *result = 0;
  return;
 }
 dst = result;


 leading = 1;
 while (src < eq) {
  c = *src++;
  if (leading && (isspace(c) || c == '"'))
   continue;
  *dst++ = c;
  leading = 0;
 }


 if (leading) {
  *result = 0;
  return;
 }


 while (isspace(dst[-1]) || dst[-1] == '"')
  --dst;
 *dst++ = *src++;


 leading = 1;
 while ((c = *src++) != 0) {
  if (leading && (isspace(c) || c == '"'))
   continue;
  *dst++ = c;
  leading = 0;
 }


 if (leading) {
  *dst = 0;
  return;
 }


 while (isspace(dst[-1]) || dst[-1] == '"')
  --dst;

 *dst = 0;
}
