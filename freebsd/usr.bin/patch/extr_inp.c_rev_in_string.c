
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int * revision ;
 size_t strlen (int *) ;
 scalar_t__ strnEQ (char const*,int *,size_t) ;

__attribute__((used)) static bool
rev_in_string(const char *string)
{
 const char *s;
 size_t patlen;

 if (revision == ((void*)0))
  return 1;
 patlen = strlen(revision);
 if (strnEQ(string, revision, patlen) && isspace((unsigned char)string[patlen]))
  return 1;
 for (s = string; *s; s++) {
  if (isspace((unsigned char)*s) && strnEQ(s + 1, revision, patlen) &&
      isspace((unsigned char)s[patlen + 1])) {
   return 1;
  }
 }
 return 0;
}
