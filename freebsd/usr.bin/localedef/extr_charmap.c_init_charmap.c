
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_INIT (int *) ;
 int cmap_sym ;
 int cmap_wc ;

void
init_charmap(void)
{
 RB_INIT(&cmap_sym);

 RB_INIT(&cmap_wc);
}
