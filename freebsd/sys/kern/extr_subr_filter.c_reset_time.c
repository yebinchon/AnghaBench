
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct time_filter {int cur_time_limit; } ;



void
reset_time(struct time_filter *tf, uint32_t time_len)
{
 tf->cur_time_limit = time_len;
}
