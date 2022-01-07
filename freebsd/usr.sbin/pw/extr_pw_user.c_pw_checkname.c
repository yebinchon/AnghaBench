
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int showch ;


 int EX_DATAERR ;
 int EX_USAGE ;
 int LOGNAMESIZE ;
 int errx (int ,char*,char*,int,...) ;
 int snprintf (char*,int,char*,char const) ;
 int * strchr (char const*,char const) ;

char *
pw_checkname(char *name, int gecos)
{
 char showch[8];
 const char *badchars, *ch, *showtype;
 int reject;

 ch = name;
 reject = 0;
 if (gecos) {

  badchars = ":";
  showtype = "gecos field";
 } else {

  badchars = " ,\t:+&#%$^()!@~*?<>=|\\/\"";
  showtype = "userid/group name";

  if (*ch == '-')
   reject = 1;
 }
 if (!reject) {
  while (*ch) {
   if (strchr(badchars, *ch) != ((void*)0) ||
       (!gecos && *ch < ' ') ||
       *ch == 127) {
    reject = 1;
    break;
   }

   if (!gecos && (*ch & 0x80)) {
    reject = 1;
    break;
   }
   ch++;
  }
 }




 if (reject && !gecos) {
  if (*ch == '$' && *(ch + 1) == '\0') {
   reject = 0;
   ch++;
  }
 }
 if (reject) {
  snprintf(showch, sizeof(showch), (*ch >= ' ' && *ch < 127)
      ? "`%c'" : "0x%02x", *ch);
  errx(EX_DATAERR, "invalid character %s at position %td in %s",
      showch, (ch - name), showtype);
 }
 if (!gecos && (ch - name) > LOGNAMESIZE)
  errx(EX_USAGE, "name too long `%s' (max is %d)", name,
      LOGNAMESIZE);

 return (name);
}
