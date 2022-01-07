
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int qlm_mode; } ;
typedef int ssize_t ;
typedef int boolean_t ;


 int FALSE ;







 int TRUE ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static boolean_t
bgx_fdt_phy_name_match(struct bgx *bgx, char *phy_name, ssize_t size)
{
 const char *type;
 ssize_t sz;

 switch (bgx->qlm_mode) {
 case 131:
  type = "sgmii";
  sz = sizeof("sgmii");
  break;
 case 130:
  type = "xaui";
  sz = sizeof("xaui");
  if (sz < size)
   return (FALSE);
  if (strncmp(phy_name, type, sz) == 0)
   return (TRUE);
  type = "dxaui";
  sz = sizeof("dxaui");
  break;
 case 132:
  type = "raui";
  sz = sizeof("raui");
  break;
 case 129:
  type = "xfi";
  sz = sizeof("xfi");
  break;
 case 128:
  type = "xlaui";
  sz = sizeof("xlaui");
  break;
 case 134:
  type = "xfi-10g-kr";
  sz = sizeof("xfi-10g-kr");
  break;
 case 133:
  type = "xlaui-40g-kr";
  sz = sizeof("xlaui-40g-kr");
  break;
 default:
  return (FALSE);
 }

 if (sz > size)
  return (FALSE);
 if (strncmp(phy_name, type, sz - 1) == 0 &&
     (phy_name[sz - 1] == '\0' || phy_name[sz - 1] == '@'))
  return (TRUE);

 return (FALSE);
}
