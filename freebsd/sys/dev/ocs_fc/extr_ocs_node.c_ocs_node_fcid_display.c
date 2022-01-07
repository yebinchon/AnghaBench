
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int FC_ADDR_GET_DOMAIN_CTRL (int) ;
 int FC_ADDR_IS_DOMAIN_CTRL (int) ;

 int ocs_snprintf (char*,int,char*,...) ;

void
ocs_node_fcid_display(uint32_t fc_id, char *buffer, uint32_t buffer_length)
{
 switch (fc_id) {
 case 129:
  ocs_snprintf(buffer, buffer_length, "fabric");
  break;
 case 130:
  ocs_snprintf(buffer, buffer_length, "fabctl");
  break;
 case 128:
  ocs_snprintf(buffer, buffer_length, "nserve");
  break;
 default:
  if (FC_ADDR_IS_DOMAIN_CTRL(fc_id)) {
   ocs_snprintf(buffer, buffer_length, "dctl%02x",
    FC_ADDR_GET_DOMAIN_CTRL(fc_id));
  } else {
   ocs_snprintf(buffer, buffer_length, "%06x", fc_id);
  }
  break;
 }

}
