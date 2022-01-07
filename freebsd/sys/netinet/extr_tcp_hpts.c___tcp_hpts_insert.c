
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct inpcb {int dummy; } ;
typedef int int32_t ;


 int tcp_hpts_insert_diag (struct inpcb*,int ,int ,int *) ;

uint32_t
__tcp_hpts_insert(struct inpcb *inp, uint32_t slot, int32_t line){
 return (tcp_hpts_insert_diag(inp, slot, line, ((void*)0)));
}
