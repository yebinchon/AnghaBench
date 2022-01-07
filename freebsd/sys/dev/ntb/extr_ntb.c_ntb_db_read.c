
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_child {int dboff; int dbmask; } ;
typedef int device_t ;


 int NTB_DB_READ (int ) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

uint64_t
ntb_db_read(device_t ntb)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return ((NTB_DB_READ(device_get_parent(ntb)) >> nc->dboff)
     & nc->dbmask);
}
