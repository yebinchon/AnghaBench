
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFN_NAN ;
 int dfn_counter ;
 scalar_t__ dfn_depth ;

void
dfn_init(void)
{

    dfn_depth = 0;
    dfn_counter = DFN_NAN;
}
