
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ooo_opaque {int dummy; } ;
struct ecore_ooo_history {size_t head_idx; size_t num_of_cqes; struct ooo_opaque* p_cqes; } ;
struct ecore_ooo_info {struct ecore_ooo_history ooo_history; } ;



void ecore_ooo_save_history_entry(struct ecore_ooo_info *p_ooo_info,
      struct ooo_opaque *p_cqe)
{
 struct ecore_ooo_history *p_history = &p_ooo_info->ooo_history;

 if (p_history->head_idx == p_history->num_of_cqes)
   p_history->head_idx = 0;
 p_history->p_cqes[p_history->head_idx] = *p_cqe;
 p_history->head_idx++;
}
