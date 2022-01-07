
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int au_event_t ;


 int ARG_CTLNAME ;
 int ARG_LEN ;
 int ARG_VALUE ;
 int AUE_SYSCTL ;
 int AUE_SYSCTL_NONADMIN ;
au_event_t
audit_ctlname_to_sysctlevent(int name[], uint64_t valid_arg)
{


 if ((valid_arg & (ARG_CTLNAME | ARG_LEN)) != (ARG_CTLNAME | ARG_LEN))
  return (AUE_SYSCTL);

 switch (name[0]) {

 case 138:
 case 140:
 case 139:
 case 129:
 case 162:
 case 159:
 case 160:
 case 137:
 case 144:
 case 151:
 case 133:
 case 141:
 case 158:
  return (AUE_SYSCTL_NONADMIN);


 case 145:
 case 147:
 case 149:
 case 146:
 case 148:
 case 155:
 case 132:
 case 154:
 case 128:
 case 136:
 case 156:
 case 135:
 case 143:
 case 131:
 case 142:
 case 161:
 case 157:
 case 152:
 case 134:
 case 130:
 case 150:
 case 153:
  return ((valid_arg & ARG_VALUE) ?
      AUE_SYSCTL : AUE_SYSCTL_NONADMIN);

 default:
  return (AUE_SYSCTL);
 }

}
