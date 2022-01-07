
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_EMPTY (int ,int *) ;
 int BUF_DOMAINS ;
 int bdhidirty ;

int
buf_dirty_count_severe(void)
{

 return (!BIT_EMPTY(BUF_DOMAINS, &bdhidirty));
}
