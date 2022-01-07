
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int header_length ;
 int screen_width ;
 int strlen (char const*) ;
 char* strndup (char const*,int) ;

char *
trim_header(const char *text)
{
 char *s;
 int width;

 s = ((void*)0);
 width = screen_width;
 header_length = strlen(text);
 if (header_length >= width) {
  s = strndup(text, width);
  if (s == ((void*)0))
   return (((void*)0));
 }
 return (s);
}
