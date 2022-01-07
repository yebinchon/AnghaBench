
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwmbt_version {int hw_variant; int hw_revision; int fw_revision; } ;
struct iwmbt_boot_params {int dev_revid; } ;


 int asprintf (char**,char*,char const*,int ,int ,char const*,...) ;
 int le16toh (int) ;

char *
iwmbt_get_fwname(struct iwmbt_version *ver, struct iwmbt_boot_params *params,
    const char *prefix, const char *suffix)
{
 char *fwname;

 switch (ver->hw_variant) {
 case 0x0b:
 case 0x0c:
  asprintf(&fwname, "%s/ibt-%u-%u.%s",
      prefix,
      le16toh(ver->hw_variant),
      le16toh(params->dev_revid),
      suffix);
  break;

 case 0x11:
 case 0x12:
 case 0x13:
 case 0x14:
  asprintf(&fwname, "%s/ibt-%u-%u-%u.%s",
      prefix,
      le16toh(ver->hw_variant),
      le16toh(ver->hw_revision),
      le16toh(ver->fw_revision),
      suffix);
  break;

 default:
  fwname = ((void*)0);
 }

 return (fwname);
}
