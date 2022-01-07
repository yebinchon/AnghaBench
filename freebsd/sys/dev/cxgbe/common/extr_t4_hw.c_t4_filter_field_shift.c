
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int vlan_pri_map; } ;
struct TYPE_4__ {TYPE_1__ tp; } ;
struct adapter {TYPE_2__ params; } ;
 int W_FT_ETHERTYPE ;
 int W_FT_FCOE ;
 int W_FT_FRAGMENTATION ;
 int W_FT_MACMATCH ;
 int W_FT_MPSHITTYPE ;
 int W_FT_PORT ;
 int W_FT_PROTOCOL ;
 int W_FT_TOS ;
 int W_FT_VLAN ;
 int W_FT_VNIC_ID ;

int t4_filter_field_shift(const struct adapter *adap, int filter_sel)
{
 unsigned int filter_mode = adap->params.tp.vlan_pri_map;
 unsigned int sel;
 int field_shift;

 if ((filter_mode & filter_sel) == 0)
  return -1;

 for (sel = 1, field_shift = 0; sel < filter_sel; sel <<= 1) {
  switch (filter_mode & sel) {
  case 136:
   field_shift += W_FT_FCOE;
   break;
  case 132:
   field_shift += W_FT_PORT;
   break;
  case 128:
   field_shift += W_FT_VNIC_ID;
   break;
  case 129:
   field_shift += W_FT_VLAN;
   break;
  case 130:
   field_shift += W_FT_TOS;
   break;
  case 131:
   field_shift += W_FT_PROTOCOL;
   break;
  case 137:
   field_shift += W_FT_ETHERTYPE;
   break;
  case 134:
   field_shift += W_FT_MACMATCH;
   break;
  case 133:
   field_shift += W_FT_MPSHITTYPE;
   break;
  case 135:
   field_shift += W_FT_FRAGMENTATION;
   break;
  }
 }
 return field_shift;
}
