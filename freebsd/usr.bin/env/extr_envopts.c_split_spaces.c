
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env_verbosity ;
 int errx (int,char*,char const,...) ;
 char* expand_vars (int,char**,char**,char const**) ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ isspacech (char const) ;
 void* malloc (int) ;
 int stderr ;
 int strlen (char const*) ;

void
split_spaces(const char *str, int *origind, int *origc, char ***origv)
{
 static const char *nullarg = "";
 const char *bq_src, *copystr, *src;
 char *dest, **newargv, *newstr, **nextarg, **oldarg;
 int addcount, bq_destlen, copychar, found_sep, in_arg, in_dq, in_sq;






 while (isspacech(*str))
  str++;
 if (*str == '\0')
  return;
 newstr = malloc(strlen(str) + 1);






 newargv = malloc((*origc + (strlen(str) / 2) + 2) * sizeof(char *));
 nextarg = newargv;
 *nextarg++ = **origv;


 addcount = 0;
 bq_destlen = in_arg = in_dq = in_sq = 0;
 bq_src = ((void*)0);
 for (src = str, dest = newstr; *src != '\0'; src++) {






  copychar = found_sep = 0;
  copystr = ((void*)0);
  switch (*src) {
  case '"':
   if (in_sq)
    copychar = *src;
   else if (in_dq)
    in_dq = 0;
   else {





    copystr = nullarg;
    in_dq = 1;
    bq_destlen = dest - *(nextarg - 1);
    bq_src = src;
   }
   break;
  case '$':
   if (in_sq)
    copychar = *src;
   else {
    copystr = expand_vars(in_arg, (nextarg - 1),
        &dest, &src);
   }
   break;
  case '\'':
   if (in_dq)
    copychar = *src;
   else if (in_sq)
    in_sq = 0;
   else {





    copystr = nullarg;
    in_sq = 1;
    bq_destlen = dest - *(nextarg - 1);
    bq_src = src;
   }
   break;
  case '\\':
   if (in_sq) {





    copychar = *(src + 1);
    if (copychar == '\'' || copychar == '\\')
     src++;
    else
     copychar = *src;
    break;
   }
   src++;
   switch (*src) {
   case '"':
   case '#':
   case '$':
   case '\'':
   case '\\':
    copychar = *src;
    break;
   case '_':





    if (in_dq)
     copychar = ' ';
    else {
     found_sep = 1;
     src++;
    }
    break;
   case 'c':





    if (in_dq)
     errx(1, "Sequence '\\%c' is not allowed"
         " in quoted strings", *src);
    goto str_done;
   case 'f':
    copychar = '\f';
    break;
   case 'n':
    copychar = '\n';
    break;
   case 'r':
    copychar = '\r';
    break;
   case 't':
    copychar = '\t';
    break;
   case 'v':
    copychar = '\v';
    break;
   default:
    if (isspacech(*src))
     copychar = *src;
    else
     errx(1, "Invalid sequence '\\%c' in -S",
         *src);
   }
   break;
  default:
   if ((in_dq || in_sq) && in_arg)
    copychar = *src;
   else if (isspacech(*src))
    found_sep = 1;
   else {




    if (!in_arg && *src == '#')
     goto str_done;
    copychar = *src;
   }
  }




  if (copychar || copystr != ((void*)0)) {
   if (!in_arg) {

    *nextarg++ = dest;
    addcount++;
    in_arg = 1;
   }
   if (copychar)
    *dest++ = (char)copychar;
   else if (copystr != ((void*)0))
    while (*copystr != '\0')
     *dest++ = *copystr++;
  } else if (found_sep) {
   *dest++ = '\0';
   while (isspacech(*src))
    src++;
   --src;
   in_arg = 0;
  }
 }
str_done:
 *dest = '\0';
 *nextarg = ((void*)0);
 if (in_dq || in_sq) {
  errx(1, "No terminating quote for string: %.*s%s",
      bq_destlen, *(nextarg - 1), bq_src);
 }
 if (env_verbosity > 1) {
  fprintf(stderr, "#env  split -S:\t'%s'\n", str);
  oldarg = newargv + 1;
  fprintf(stderr, "#env      into:\t'%s'\n", *oldarg);
  for (oldarg++; *oldarg; oldarg++)
   fprintf(stderr, "#env          &\t'%s'\n", *oldarg);
 }


 for (oldarg = *origv + *origind; *oldarg; oldarg++)
  *nextarg++ = *oldarg;
 *nextarg = ((void*)0);


 *origc += addcount - *origind + 1;
 *origv = newargv;
 *origind = 1;
}
