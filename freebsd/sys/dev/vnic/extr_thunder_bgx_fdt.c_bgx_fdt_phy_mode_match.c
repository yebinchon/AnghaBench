
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int qlm_mode; } ;
typedef size_t ssize_t ;
typedef int boolean_t ;


 int FALSE ;







 int TRUE ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static boolean_t
bgx_fdt_phy_mode_match(struct bgx *bgx, char *qlm_mode, ssize_t size)
{
 const char *type;
 ssize_t sz;
 ssize_t offset;

 switch (bgx->qlm_mode) {
 case 131:
  type = "sgmii";
  sz = sizeof("sgmii");
  offset = size - sz;
  break;
 case 130:
  type = "xaui";
  sz = sizeof("xaui");
  offset = size - sz;
  if (offset < 0)
   return (FALSE);
  if (strncmp(&qlm_mode[offset], type, sz) == 0)
   return (TRUE);
  type = "dxaui";
  sz = sizeof("dxaui");
  offset = size - sz;
  break;
 case 132:
  type = "raui";
  sz = sizeof("raui");
  offset = size - sz;
  break;
 case 129:
  type = "xfi";
  sz = sizeof("xfi");
  offset = size - sz;
  break;
 case 128:
  type = "xlaui";
  sz = sizeof("xlaui");
  offset = size - sz;
  break;
 case 134:
  type = "xfi-10g-kr";
  sz = sizeof("xfi-10g-kr");
  offset = size - sz;
  break;
 case 133:
  type = "xlaui-40g-kr";
  sz = sizeof("xlaui-40g-kr");
  offset = size - sz;
  break;
 default:
  return (FALSE);
 }

 if (offset < 0)
  return (FALSE);

 if (strncmp(&qlm_mode[offset], type, sz) == 0)
  return (TRUE);

 return (FALSE);
}
