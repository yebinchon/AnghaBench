
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ntb_child {int dboff; int dbmask; } ;
typedef int device_t ;


 int NTB_DB_VECTOR_MASK (int ,int ) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

uint64_t
ntb_db_vector_mask(device_t ntb, uint32_t vector)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return ((NTB_DB_VECTOR_MASK(device_get_parent(ntb), vector)
     >> nc->dboff) & nc->dbmask);
}
