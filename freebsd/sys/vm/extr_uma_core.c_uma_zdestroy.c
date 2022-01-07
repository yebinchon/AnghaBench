
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;


 int SKIP_NONE ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int uma_reclaim_lock ;
 int zone_free_item (int ,int ,int *,int ) ;
 int zones ;

void
uma_zdestroy(uma_zone_t zone)
{

 sx_slock(&uma_reclaim_lock);
 zone_free_item(zones, zone, ((void*)0), SKIP_NONE);
 sx_sunlock(&uma_reclaim_lock);
}
