
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;



int
pmcpl_cg_topkeypress(int c, void *arg)
{
 WINDOW *w;

 w = (WINDOW *)arg;

 (void) c; (void) w;

 return 0;
}
