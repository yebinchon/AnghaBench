
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ecore_dev {int dummy; } ;
typedef int osal_size_t ;
typedef enum ecore_llh_prot_filter_type_t { ____Placeholder_ecore_llh_prot_filter_type_t } ecore_llh_prot_filter_type_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*,int) ;
 int ECORE_INVAL ;







 int ECORE_SUCCESS ;
 int OSAL_SNPRINTF (int *,int ,char*,int ,...) ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_protocol_filter_stringify(struct ecore_dev *p_dev,
        enum ecore_llh_prot_filter_type_t type,
        u16 source_port_or_eth_type, u16 dest_port,
        u8 *str, osal_size_t str_len)
{
 switch (type) {
 case 134:
  OSAL_SNPRINTF(str, str_len, "Ethertype 0x%04x",
         source_port_or_eth_type);
  break;
 case 131:
  OSAL_SNPRINTF(str, str_len, "TCP src port 0x%04x",
         source_port_or_eth_type);
  break;
 case 128:
  OSAL_SNPRINTF(str, str_len, "UDP src port 0x%04x",
         source_port_or_eth_type);
  break;
 case 133:
  OSAL_SNPRINTF(str, str_len, "TCP dst port 0x%04x", dest_port);
  break;
 case 130:
  OSAL_SNPRINTF(str, str_len, "UDP dst port 0x%04x", dest_port);
  break;
 case 132:
  OSAL_SNPRINTF(str, str_len, "TCP src/dst ports 0x%04x/0x%04x",
         source_port_or_eth_type, dest_port);
  break;
 case 129:
  OSAL_SNPRINTF(str, str_len, "UDP src/dst ports 0x%04x/0x%04x",
         source_port_or_eth_type, dest_port);
  break;
 default:
  DP_NOTICE(p_dev, 1,
     "Non valid LLH protocol filter type %d\n", type);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
