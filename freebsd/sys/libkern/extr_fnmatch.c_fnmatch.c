
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FNM_CASEFOLD ;
 int FNM_LEADING_DIR ;
 int FNM_NOESCAPE ;
 int FNM_NOMATCH ;
 int FNM_PATHNAME ;
 int FNM_PERIOD ;



 int rangematch (char const*,char const,int,char**) ;
 char* strchr (char const*,char) ;
 int tolower (unsigned char) ;

int
fnmatch(const char *pattern, const char *string, int flags)
{
 const char *stringstart;
 char *newp;
 char c, test;

 for (stringstart = string;;)
  switch (c = *pattern++) {
  case 131:
   if ((flags & FNM_LEADING_DIR) && *string == '/')
    return (0);
   return (*string == 131 ? 0 : FNM_NOMATCH);
  case '?':
   if (*string == 131)
    return (FNM_NOMATCH);
   if (*string == '/' && (flags & FNM_PATHNAME))
    return (FNM_NOMATCH);
   if (*string == '.' && (flags & FNM_PERIOD) &&
       (string == stringstart ||
       ((flags & FNM_PATHNAME) && *(string - 1) == '/')))
    return (FNM_NOMATCH);
   ++string;
   break;
  case '*':
   c = *pattern;

   while (c == '*')
    c = *++pattern;

   if (*string == '.' && (flags & FNM_PERIOD) &&
       (string == stringstart ||
       ((flags & FNM_PATHNAME) && *(string - 1) == '/')))
    return (FNM_NOMATCH);


   if (c == 131)
    if (flags & FNM_PATHNAME)
     return ((flags & FNM_LEADING_DIR) ||
         strchr(string, '/') == ((void*)0) ?
         0 : FNM_NOMATCH);
    else
     return (0);
   else if (c == '/' && flags & FNM_PATHNAME) {
    if ((string = strchr(string, '/')) == ((void*)0))
     return (FNM_NOMATCH);
    break;
   }


   while ((test = *string) != 131) {
    if (!fnmatch(pattern, string, flags & ~FNM_PERIOD))
     return (0);
    if (test == '/' && flags & FNM_PATHNAME)
     break;
    ++string;
   }
   return (FNM_NOMATCH);
  case '[':
   if (*string == 131)
    return (FNM_NOMATCH);
   if (*string == '/' && (flags & FNM_PATHNAME))
    return (FNM_NOMATCH);
   if (*string == '.' && (flags & FNM_PERIOD) &&
       (string == stringstart ||
       ((flags & FNM_PATHNAME) && *(string - 1) == '/')))
    return (FNM_NOMATCH);

   switch (rangematch(pattern, *string, flags, &newp)) {
   case 130:
    goto norm;
   case 129:
    pattern = newp;
    break;
   case 128:
    return (FNM_NOMATCH);
   }
   ++string;
   break;
  case '\\':
   if (!(flags & FNM_NOESCAPE)) {
    if ((c = *pattern++) == 131) {
     c = '\\';
     --pattern;
    }
   }

  default:
  norm:
   if (c == *string)
    ;
   else if ((flags & FNM_CASEFOLD) &&
     (tolower((unsigned char)c) ==
      tolower((unsigned char)*string)))
    ;
   else
    return (FNM_NOMATCH);
   string++;
   break;
  }

}
