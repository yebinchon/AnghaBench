
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int V_rawcb_list ;

void
raw_init(void)
{

 LIST_INIT(&V_rawcb_list);
}
