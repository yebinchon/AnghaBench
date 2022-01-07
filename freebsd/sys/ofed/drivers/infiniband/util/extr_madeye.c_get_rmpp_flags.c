
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 int IB_MGMT_RMPP_FLAG_FIRST ;
 int IB_MGMT_RMPP_FLAG_LAST ;

__attribute__((used)) static char * get_rmpp_flags(u8 rmpp_flags)
{
 if (rmpp_flags & IB_MGMT_RMPP_FLAG_ACTIVE)
  if (rmpp_flags & IB_MGMT_RMPP_FLAG_FIRST)
   if (rmpp_flags & IB_MGMT_RMPP_FLAG_LAST)
    return "Active - First & Last";
   else
    return "Active - First";
  else
   if (rmpp_flags & IB_MGMT_RMPP_FLAG_LAST)
    return "Active - Last";
   else
    return "Active";
 else
  return "Inactive";
}
