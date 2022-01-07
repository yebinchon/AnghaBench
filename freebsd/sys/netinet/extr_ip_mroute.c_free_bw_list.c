
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bw_meter {struct bw_meter* bm_mfc_next; } ;


 int M_BWMETER ;
 int free (struct bw_meter*,int ) ;
 int unschedule_bw_meter (struct bw_meter*) ;

__attribute__((used)) static void
free_bw_list(struct bw_meter *list)
{
    while (list != ((void*)0)) {
 struct bw_meter *x = list;

 list = list->bm_mfc_next;
 unschedule_bw_meter(x);
 free(x, M_BWMETER);
    }
}
