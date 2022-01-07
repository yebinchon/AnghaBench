
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_child {int dbmask; } ;
typedef int device_t ;


 struct ntb_child* device_get_ivars (int ) ;

uint64_t
ntb_db_valid_mask(device_t ntb)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (nc->dbmask);
}
