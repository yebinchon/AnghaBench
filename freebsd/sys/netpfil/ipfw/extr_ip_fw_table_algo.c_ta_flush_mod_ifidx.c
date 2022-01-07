
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_item {int * main_ptr; } ;


 int M_IPFW ;
 int free (int *,int ) ;

__attribute__((used)) static void
ta_flush_mod_ifidx(void *ta_buf)
{
 struct mod_item *mi;

 mi = (struct mod_item *)ta_buf;
 if (mi->main_ptr != ((void*)0))
  free(mi->main_ptr, M_IPFW);
}
