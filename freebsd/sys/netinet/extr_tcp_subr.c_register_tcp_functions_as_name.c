
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_function_block {char* tfb_tcp_block_name; } ;


 int register_tcp_functions_as_names (struct tcp_function_block*,int,char const**,int*) ;

int
register_tcp_functions_as_name(struct tcp_function_block *blk, const char *name,
    int wait)
{
 const char *name_list[1];
 int num_names, rv;

 num_names = 1;
 if (name != ((void*)0))
  name_list[0] = name;
 else
  name_list[0] = blk->tfb_tcp_block_name;
 rv = register_tcp_functions_as_names(blk, wait, name_list, &num_names);
 return (rv);
}
