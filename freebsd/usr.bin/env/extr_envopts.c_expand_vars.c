
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env_verbosity ;
 int errx (int,char*,char const*) ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ isalnumch (char const) ;
 scalar_t__ isalphach (char const) ;
 char* malloc (size_t) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *
expand_vars(int in_thisarg, char **thisarg_p, char **dest_p, const char **src_p)
{
 const char *vbegin, *vend, *vvalue;
 char *newstr, *vname;
 int bad_reference;
 size_t namelen, newlen;

 bad_reference = 1;
 vbegin = vend = (*src_p) + 1;
 if (*vbegin++ == '{')
  if (*vbegin == '_' || isalphach(*vbegin)) {
   vend = vbegin + 1;
   while (*vend == '_' || isalnumch(*vend))
    vend++;
   if (*vend == '}')
    bad_reference = 0;
  }
 if (bad_reference)
  errx(1, "Only ${VARNAME} expansion is supported, error at: %s",
      *src_p);







 *src_p = vend;
 namelen = vend - vbegin + 1;
 vname = malloc(namelen);
 strlcpy(vname, vbegin, namelen);
 vvalue = getenv(vname);
 if (vvalue == ((void*)0) || *vvalue == '\0') {
  if (env_verbosity > 2)
   fprintf(stderr,
       "#env  replacing ${%s} with null string\n",
       vname);
  free(vname);
  return (((void*)0));
 }

 if (env_verbosity > 2)
  fprintf(stderr, "#env  expanding ${%s} into '%s'\n", vname,
      vvalue);






 if (strlen(vname) + 3 >= strlen(vvalue)) {
  free(vname);
  return (vvalue);
 }
 newlen = strlen(vvalue) + strlen(*src_p) + 1;
 if (in_thisarg) {
  **dest_p = '\0';
  newlen += strlen(*thisarg_p);
  newstr = malloc(newlen);
  strcpy(newstr, *thisarg_p);
  *thisarg_p = newstr;
 } else {
  newstr = malloc(newlen);
  *newstr = '\0';
 }
 *dest_p = strchr(newstr, '\0');
 free(vname);
 return (vvalue);
}
