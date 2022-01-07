
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long XDF_IGNORE_WHITESPACE ;
 long XDF_IGNORE_WHITESPACE_CHANGE ;
 long XDF_WHITESPACE_FLAGS ;
 scalar_t__ XDL_ISSPACE (char const) ;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static int match_string_spaces(const char *line1, int len1,
          const char *line2, int len2,
          long flags)
{
 if (flags & XDF_WHITESPACE_FLAGS) {
  for (; len1 > 0 && XDL_ISSPACE(line1[len1 - 1]); len1--);
  for (; len2 > 0 && XDL_ISSPACE(line2[len2 - 1]); len2--);
 }

 if (!(flags & (XDF_IGNORE_WHITESPACE | XDF_IGNORE_WHITESPACE_CHANGE)))
  return (len1 == len2 && !memcmp(line1, line2, len1));

 while (len1 > 0 && len2 > 0) {
  len1--;
  len2--;
  if (XDL_ISSPACE(line1[len1]) || XDL_ISSPACE(line2[len2])) {
   if ((flags & XDF_IGNORE_WHITESPACE_CHANGE) &&
       (!XDL_ISSPACE(line1[len1]) || !XDL_ISSPACE(line2[len2])))
    return 0;

   for (; len1 > 0 && XDL_ISSPACE(line1[len1]); len1--);
   for (; len2 > 0 && XDL_ISSPACE(line2[len2]); len2--);
  }
  if (line1[len1] != line2[len2])
   return 0;
 }

 if (flags & XDF_IGNORE_WHITESPACE) {

  for (; len1 > 0 && XDL_ISSPACE(line1[len1 - 1]); len1--);
  for (; len2 > 0 && XDL_ISSPACE(line2[len2 - 1]); len2--);
 }


 if (!len1 && !len2)
  return 1;

 return 0;
}
