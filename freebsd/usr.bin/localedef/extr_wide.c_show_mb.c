
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scr ;
typedef int buf ;


 scalar_t__ isascii (char const) ;
 scalar_t__ isgraph (char const) ;
 int snprintf (char*,int,char*,char const) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static char *
show_mb(const char *mb)
{
 static char buf[64];


 if (isascii(*mb) && isgraph(*mb)) {
  buf[0] = *mb;
  buf[1] = 0;
  return (buf);
 }
 buf[0] = 0;
 while (*mb != 0) {
  char scr[8];
  (void) snprintf(scr, sizeof (scr), "\\x%02x", *mb);
  (void) strlcat(buf, scr, sizeof (buf));
  mb++;
 }
 return (buf);
}
