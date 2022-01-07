
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int device_t ;
typedef int bus_addr_t ;


 int NTB_PEER_DB_ADDR (int ,int *,int *) ;
 int device_get_parent (int ) ;

int
ntb_peer_db_addr(device_t ntb, bus_addr_t *db_addr, vm_size_t *db_size)
{

 return (NTB_PEER_DB_ADDR(device_get_parent(ntb), db_addr, db_size));
}
