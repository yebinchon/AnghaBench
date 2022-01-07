
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {char* sec_name; scalar_t__ auth_proto; int* auth_key; scalar_t__ priv_proto; int* priv_key; } ;
struct TYPE_4__ {TYPE_1__ user; } ;


 size_t SNMP_AUTH_HMACMD5_KEY_SIZ ;
 size_t SNMP_AUTH_HMACSHA_KEY_SIZ ;
 scalar_t__ SNMP_AUTH_HMAC_MD5 ;
 scalar_t__ SNMP_AUTH_HMAC_SHA ;
 int SNMP_AUTH_KEY_SIZ ;
 scalar_t__ SNMP_AUTH_NOAUTH ;
 scalar_t__ SNMP_PRIV_AES ;
 size_t SNMP_PRIV_AES_KEY_SIZ ;
 scalar_t__ SNMP_PRIV_DES ;
 size_t SNMP_PRIV_DES_KEY_SIZ ;
 scalar_t__ SNMP_PRIV_NOPRIV ;
 int fprintf (int ,char*,...) ;
 TYPE_2__ snmp_client ;
 int sprintf (char*,char*,int) ;
 int stdout ;

void
snmp_output_keys(void)
{
 uint32_t i, keylen = 0;
 char *cptr, extkey[2 * SNMP_AUTH_KEY_SIZ + 2];

 fprintf(stdout, "Localized keys for %s\n", snmp_client.user.sec_name);
 if (snmp_client.user.auth_proto == SNMP_AUTH_HMAC_MD5) {
  fprintf(stdout, "MD5 : 0x");
  keylen = SNMP_AUTH_HMACMD5_KEY_SIZ;
 } else if (snmp_client.user.auth_proto == SNMP_AUTH_HMAC_SHA) {
  fprintf(stdout, "SHA : 0x");
  keylen = SNMP_AUTH_HMACSHA_KEY_SIZ;
 }
 if (snmp_client.user.auth_proto != SNMP_AUTH_NOAUTH) {
  cptr = extkey;
  for (i = 0; i < keylen; i++)
   cptr += sprintf(cptr, "%.2x",
       snmp_client.user.auth_key[i]);
  *cptr++ = '\0';
  fprintf(stdout, "%s\n", extkey);
 }

 if (snmp_client.user.priv_proto == SNMP_PRIV_DES) {
  fprintf(stdout, "DES : 0x");
  keylen = SNMP_PRIV_DES_KEY_SIZ;
 } else if (snmp_client.user.priv_proto == SNMP_PRIV_AES) {
  fprintf(stdout, "AES : 0x");
  keylen = SNMP_PRIV_AES_KEY_SIZ;
 }
 if (snmp_client.user.priv_proto != SNMP_PRIV_NOPRIV) {
  cptr = extkey;
  for (i = 0; i < keylen; i++)
   cptr += sprintf(cptr, "%.2x",
       snmp_client.user.priv_key[i]);
  *cptr++ = '\0';
  fprintf(stdout, "%s\n", extkey);
 }
}
