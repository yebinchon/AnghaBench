
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (char*,int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
mkfullname(const char *s1, const char *s2, const char *s3)
{
 static char *buf = ((void*)0);
 static int bufl = 0;
 int f;

 f = strlen(s1) + strlen(s2) + strlen(s3) + 1;
 if (f > bufl) {
  if (buf)
   buf = (char *)realloc(buf, f);
  else
   buf = (char *)malloc(f);
 }
 if (!buf) {
  bufl = 0;
  return(((void*)0));
 }

 bufl = f;
 strcpy(buf, s1);
 strcat(buf, s2);
 strcat(buf, s3);
 return(buf);
}
