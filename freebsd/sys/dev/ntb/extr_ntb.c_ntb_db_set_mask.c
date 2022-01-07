
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_child {int dboff; } ;
typedef int device_t ;


 void NTB_DB_SET_MASK (int ,int) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

void
ntb_db_set_mask(device_t ntb, uint64_t bits)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (NTB_DB_SET_MASK(device_get_parent(ntb), bits << nc->dboff));
}
