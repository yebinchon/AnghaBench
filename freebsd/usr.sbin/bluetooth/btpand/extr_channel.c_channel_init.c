
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int channel_list ;

void
channel_init(void)
{

 LIST_INIT(&channel_list);
}
