
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ecore_dev {int dummy; } ;
typedef enum ecore_llh_prot_filter_type_t { ____Placeholder_ecore_llh_prot_filter_type_t } ecore_llh_prot_filter_type_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*,int) ;
 int ECORE_INVAL ;







 int ECORE_SUCCESS ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_protocol_filter_to_hilo(struct ecore_dev *p_dev,
      enum ecore_llh_prot_filter_type_t type,
      u16 source_port_or_eth_type, u16 dest_port,
      u32 *p_high, u32 *p_low)
{
 *p_high = 0;
 *p_low = 0;

 switch (type) {
 case 134:
  *p_high = source_port_or_eth_type;
  break;
 case 131:
 case 128:
  *p_low = source_port_or_eth_type << 16;
  break;
 case 133:
 case 130:
  *p_low = dest_port;
  break;
 case 132:
 case 129:
  *p_low = (source_port_or_eth_type << 16) | dest_port;
  break;
 default:
  DP_NOTICE(p_dev, 1,
     "Non valid LLH protocol filter type %d\n", type);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
