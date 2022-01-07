
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * fw_msg_handler_t ;


 int FW6_TYPE_RSSCPL ;
 int FW_TYPE_RSSCPL ;
 int MPASS (int) ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 int nitems (int **) ;
 int ** t4_fw_msg_handler ;

void
t4_register_fw_msg_handler(int type, fw_msg_handler_t h)
{
 uintptr_t *loc;

 MPASS(type < nitems(t4_fw_msg_handler));
 MPASS(h == ((void*)0) || t4_fw_msg_handler[type] == ((void*)0));





 MPASS(type != FW_TYPE_RSSCPL);
 MPASS(type != FW6_TYPE_RSSCPL);

 loc = (uintptr_t *)&t4_fw_msg_handler[type];
 atomic_store_rel_ptr(loc, (uintptr_t)h);
}
