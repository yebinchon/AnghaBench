
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cpl_handler_t ;




 int CPL_COOKIE_RESERVED ;



 int MPASS (int) ;
 int NUM_CPL_COOKIES ;
 int * abort_rpl_rss_handlers ;
 int * act_open_rpl_handlers ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 int * fw4_ack_handlers ;
 int * l2t_write_rpl_handlers ;
 int nitems (int **) ;
 int * set_tcb_rpl_handlers ;
 int ** t4_cpl_handler ;

void
t4_register_shared_cpl_handler(int opcode, cpl_handler_t h, int cookie)
{
 uintptr_t *loc;

 MPASS(opcode < nitems(t4_cpl_handler));
 MPASS(cookie > CPL_COOKIE_RESERVED);
 MPASS(cookie < NUM_CPL_COOKIES);
 MPASS(t4_cpl_handler[opcode] != ((void*)0));

 switch (opcode) {
 case 128:
  loc = (uintptr_t *)&set_tcb_rpl_handlers[cookie];
  break;
 case 129:
  loc = (uintptr_t *)&l2t_write_rpl_handlers[cookie];
  break;
 case 131:
  loc = (uintptr_t *)&act_open_rpl_handlers[cookie];
  break;
 case 132:
  loc = (uintptr_t *)&abort_rpl_rss_handlers[cookie];
  break;
 case 130:
  loc = (uintptr_t *)&fw4_ack_handlers[cookie];
  break;
 default:
  MPASS(0);
  return;
 }
 MPASS(h == ((void*)0) || *loc == (uintptr_t)((void*)0));
 atomic_store_rel_ptr(loc, (uintptr_t)h);
}
