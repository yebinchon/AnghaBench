
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_lock (int *) ;
 int of_bounce_mtx ;
 scalar_t__ of_bounce_offset ;

__attribute__((used)) static void
ofw_real_start(void)
{
 mtx_lock(&of_bounce_mtx);
 of_bounce_offset = 0;
}
