
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int attr_name_valid(const char *name, size_t namelen)
{




 if (namelen <= 0 || *name == '-')
  return 0;
 while (namelen--) {
  char ch = *name++;
  if (! (ch == '-' || ch == '.' || ch == '_' ||
         ('0' <= ch && ch <= '9') ||
         ('a' <= ch && ch <= 'z') ||
         ('A' <= ch && ch <= 'Z')) )
   return 0;
 }
 return 1;
}
