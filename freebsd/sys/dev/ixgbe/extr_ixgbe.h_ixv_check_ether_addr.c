
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline bool
ixv_check_ether_addr(u8 *addr)
{
 bool status = TRUE;

 if ((addr[0] == 0 && addr[1]== 0 && addr[2] == 0 &&
     addr[3] == 0 && addr[4]== 0 && addr[5] == 0))
  status = FALSE;

 return (status);
}
