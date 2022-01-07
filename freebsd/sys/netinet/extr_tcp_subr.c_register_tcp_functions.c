
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_function_block {int dummy; } ;


 int register_tcp_functions_as_name (struct tcp_function_block*,int *,int) ;

int
register_tcp_functions(struct tcp_function_block *blk, int wait)
{

 return (register_tcp_functions_as_name(blk, ((void*)0), wait));
}
