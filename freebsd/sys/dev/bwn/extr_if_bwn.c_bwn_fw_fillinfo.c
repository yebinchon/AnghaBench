
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_FWTYPE_DEFAULT ;
 int BWN_FWTYPE_OPENSOURCE ;
 int bwn_fw_gets (struct bwn_mac*,int ) ;

__attribute__((used)) static int
bwn_fw_fillinfo(struct bwn_mac *mac)
{
 int error;

 error = bwn_fw_gets(mac, BWN_FWTYPE_DEFAULT);
 if (error == 0)
  return (0);
 error = bwn_fw_gets(mac, BWN_FWTYPE_OPENSOURCE);
 if (error == 0)
  return (0);
 return (error);
}
