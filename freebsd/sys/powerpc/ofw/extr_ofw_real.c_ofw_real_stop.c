
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_unlock (int *) ;
 int of_bounce_mtx ;

__attribute__((used)) static void
ofw_real_stop(void)
{
 mtx_unlock(&of_bounce_mtx);
}
