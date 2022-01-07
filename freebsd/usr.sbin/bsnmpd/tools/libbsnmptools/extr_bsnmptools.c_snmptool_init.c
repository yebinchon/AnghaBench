
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snmp_toolinfo {int * passwd; int filelist; int flags; int * mappings; scalar_t__ objects; } ;
struct TYPE_4__ {int * sec_name; int priv_proto; int auth_proto; } ;
struct TYPE_5__ {int version; TYPE_1__ user; } ;


 int IsoOrgDod_OID ;
 size_t MAXSTR ;
 int SET_MAXREP (struct snmp_toolinfo*,int ) ;
 int SLIST_INIT (int *) ;
 int SNMP_AUTH_HMAC_MD5 ;
 int SNMP_AUTH_HMAC_SHA ;
 int SNMP_MAX_REPETITIONS ;
 int SNMP_PDU_GET ;
 int SNMP_PRIV_AES ;
 int SNMP_PRIV_DES ;
 int SNMP_V3 ;
 scalar_t__ add_filename (struct snmp_toolinfo*,char*,int *,int ) ;
 char* bsnmpd_defs ;
 char* getenv (char*) ;
 int * malloc (size_t) ;
 int memset (struct snmp_toolinfo*,int ,int) ;
 char* mibII_defs ;
 TYPE_2__ snmp_client ;
 int snmp_client_init (TYPE_2__*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlcpy (int *,char*,size_t) ;
 size_t strlen (char*) ;
 int warn (char*) ;
 int warnx (char*,char*) ;

int
snmptool_init(struct snmp_toolinfo *snmptoolctx)
{
 char *str;
 size_t slen;

 memset(snmptoolctx, 0, sizeof(struct snmp_toolinfo));
 snmptoolctx->objects = 0;
 snmptoolctx->mappings = ((void*)0);
 snmptoolctx->flags = SNMP_PDU_GET;
 SLIST_INIT(&snmptoolctx->filelist);
 snmp_client_init(&snmp_client);
 SET_MAXREP(snmptoolctx, SNMP_MAX_REPETITIONS);

 if (add_filename(snmptoolctx, bsnmpd_defs, &IsoOrgDod_OID, 0) < 0)
  warnx("Error adding file %s to list", bsnmpd_defs);

 if (add_filename(snmptoolctx, mibII_defs, &IsoOrgDod_OID, 0) < 0)
  warnx("Error adding file %s to list", mibII_defs);


 if ((str = getenv("SNMPAUTH")) != ((void*)0)) {
  slen = strlen(str);
  if (slen == strlen("md5") && strcasecmp(str, "md5") == 0)
   snmp_client.user.auth_proto = SNMP_AUTH_HMAC_MD5;
  else if (slen == strlen("sha")&& strcasecmp(str, "sha") == 0)
   snmp_client.user.auth_proto = SNMP_AUTH_HMAC_SHA;
  else if (slen != 0)
   warnx("Bad authentication type - %s in SNMPAUTH", str);
 }

 if ((str = getenv("SNMPPRIV")) != ((void*)0)) {
  slen = strlen(str);
  if (slen == strlen("des") && strcasecmp(str, "des") == 0)
   snmp_client.user.priv_proto = SNMP_PRIV_DES;
  else if (slen == strlen("aes")&& strcasecmp(str, "aes") == 0)
   snmp_client.user.priv_proto = SNMP_PRIV_AES;
  else if (slen != 0)
   warnx("Bad privacy type - %s in SNMPPRIV", str);
 }

 if ((str = getenv("SNMPUSER")) != ((void*)0)) {
  if ((slen = strlen(str)) > sizeof(snmp_client.user.sec_name)) {
   warnx("Username too long - %s in SNMPUSER", str);
   return (-1);
  }
  if (slen > 0) {
   strlcpy(snmp_client.user.sec_name, str,
       sizeof(snmp_client.user.sec_name));
   snmp_client.version = SNMP_V3;
  }
 }

 if ((str = getenv("SNMPPASSWD")) != ((void*)0)) {
  if ((slen = strlen(str)) > MAXSTR)
   slen = MAXSTR - 1;
  if ((snmptoolctx->passwd = malloc(slen + 1)) == ((void*)0)) {
   warn("malloc() failed");
   return (-1);
  }
  if (slen > 0)
   strlcpy(snmptoolctx->passwd, str, slen + 1);
 }

 return (0);
}
