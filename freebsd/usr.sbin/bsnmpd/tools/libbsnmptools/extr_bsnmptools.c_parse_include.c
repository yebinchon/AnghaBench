
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct asn_oid {int dummy; } ;
typedef int int32_t ;


 int EOF ;



 struct asn_oid IsoOrgDod_OID ;
 int MAXPATHLEN ;
 int assert (int ) ;
 int getsubopt1 (char**,char const* const*,char**,char**) ;
 int memset (struct asn_oid*,int ,int) ;
 int parse_flist (struct snmp_toolinfo*,char*,char*,struct asn_oid*) ;
 int parse_path (char*) ;
 int snmp_parse_numoid (char*,struct asn_oid*) ;
 int strlcpy (char*,char*,int ) ;
 int suboptarg ;
 int warnx (char*,...) ;

int32_t
parse_include(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
 char path[MAXPATHLEN + 1];
 int32_t cut_dflt, len, subopt;
 struct asn_oid cut;
 char *val, *option;
 const char *const subopts[] = {
  "cut",
  "path",
  "file",
  ((void*)0)
 };





 assert(opt_arg != ((void*)0));
 path[0] = '\0';
 memset(&cut, 0, sizeof(struct asn_oid));
 cut_dflt = -1;

 while ((subopt = getsubopt1(&opt_arg, subopts, &val, &option)) != EOF) {
  switch (subopt) {
      case 0:
   if (val == ((void*)0)) {
    warnx("Suboption 'cut' requires an argument");
    return (-1);
   } else {
    if (snmp_parse_numoid(val, &cut) < 0)
     return (-1);
   }
   cut_dflt = 1;
   break;

      case 1:
   if ((len = parse_path(val)) < 0)
    return (-1);
   strlcpy(path, val, len + 1);
   break;

      case 2:
   if (val == ((void*)0))
    return (-1);
   if (cut_dflt == -1)
    len = parse_flist(snmptoolctx, val, path, &IsoOrgDod_OID);
   else
    len = parse_flist(snmptoolctx, val, path, &cut);
   if (len < 0)
    return (-1);
   break;

      default:
   warnx("Unknown suboption - '%s'", suboptarg);
   return (-1);
  }
 }


 return (2);
}
