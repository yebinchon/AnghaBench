
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_child {int dboff; } ;
typedef int device_t ;


 void NTB_PEER_DB_SET (int ,int) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

void
ntb_peer_db_set(device_t ntb, uint64_t bits)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (NTB_PEER_DB_SET(device_get_parent(ntb), bits << nc->dboff));
}
