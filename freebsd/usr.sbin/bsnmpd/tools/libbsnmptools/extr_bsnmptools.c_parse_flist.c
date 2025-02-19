
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_int ;
struct snmp_toolinfo {int dummy; } ;
struct asn_oid {int dummy; } ;
typedef int int32_t ;


 int MAXPATHLEN ;
 char* SNMP_DEFS_DIR ;
 scalar_t__ add_filename (struct snmp_toolinfo*,char*,struct asn_oid const*,int ) ;
 scalar_t__ isalpha (char) ;
 int isascii (char) ;
 int isprint (char) ;
 scalar_t__ isvalid_fchar (char,int) ;
 int memset (char*,int ,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int32_t
parse_flist(struct snmp_toolinfo *snmptoolctx, char *value, char *path,
    const struct asn_oid *cut)
{
 int32_t namelen;
 char filename[MAXPATHLEN + 1];

 if (value == ((void*)0))
  return (-1);

 do {
  memset(filename, 0, MAXPATHLEN + 1);

  if (isalpha(*value) && (path == ((void*)0) || path[0] == '\0')) {
   strlcpy(filename, SNMP_DEFS_DIR, MAXPATHLEN + 1);
   namelen = strlen(SNMP_DEFS_DIR);
  } else if (path != ((void*)0)){
   strlcpy(filename, path, MAXPATHLEN + 1);
   namelen = strlen(path);
  } else
   namelen = 0;

  for ( ; namelen < MAXPATHLEN; value++) {
   if (isvalid_fchar(*value, namelen) > 0) {
    filename[namelen++] = *value;
    continue;
   }

   if (*value == ',' )
    value++;
   else if (*value == '\0')
    ;
   else {
    if (!isascii(*value) || !isprint(*value))
     warnx("Unexpected character %#2x in"
         " filename", (u_int) *value);
    else
     warnx("Illegal character '%c' in"
         " filename", *value);
    return (-1);
   }

   filename[namelen]='\0';
   break;
  }

  if ((namelen == MAXPATHLEN) && (filename[MAXPATHLEN] != '\0')) {
   warnx("Filename %s too long", filename);
   return (-1);
  }

  if (add_filename(snmptoolctx, filename, cut, 0) < 0) {
   warnx("Error adding file %s to list", filename);
   return (-1);
  }
 } while (*value != '\0');

 return(1);
}
