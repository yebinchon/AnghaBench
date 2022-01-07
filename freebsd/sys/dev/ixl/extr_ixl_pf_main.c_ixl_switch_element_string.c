
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct i40e_aqc_switch_config_element_resp {int element_type; int element_info; } ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_clear (struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,int ) ;

char *
ixl_switch_element_string(struct sbuf *s,
    struct i40e_aqc_switch_config_element_resp *element)
{
 sbuf_clear(s);

 switch (element->element_type) {
 case 134:
  sbuf_printf(s, "MAC %3d", element->element_info);
  break;
 case 132:
  sbuf_printf(s, "PF  %3d", element->element_info);
  break;
 case 129:
  sbuf_printf(s, "VF  %3d", element->element_info);
  break;
 case 135:
  sbuf_cat(s, "EMP");
  break;
 case 136:
  sbuf_cat(s, "BMC");
  break;
 case 131:
  sbuf_cat(s, "PV");
  break;
 case 130:
  sbuf_cat(s, "VEB");
  break;
 case 133:
  sbuf_cat(s, "PA");
  break;
 case 128:
  sbuf_printf(s, "VSI %3d", element->element_info);
  break;
 default:
  sbuf_cat(s, "?");
  break;
 }

 sbuf_finish(s);
 return sbuf_data(s);
}
