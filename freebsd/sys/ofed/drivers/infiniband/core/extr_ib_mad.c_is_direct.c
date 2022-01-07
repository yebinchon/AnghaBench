
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;

__attribute__((used)) static inline int is_direct(u8 class)
{
 return (class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE);
}
