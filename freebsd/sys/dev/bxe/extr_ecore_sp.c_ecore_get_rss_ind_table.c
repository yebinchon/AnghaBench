
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ecore_rss_config_obj {int ind_table; } ;


 int ECORE_MEMCPY (int *,int ,int) ;

void ecore_get_rss_ind_table(struct ecore_rss_config_obj *rss_obj,
        uint8_t *ind_table)
{
 ECORE_MEMCPY(ind_table, rss_obj->ind_table, sizeof(rss_obj->ind_table));
}
