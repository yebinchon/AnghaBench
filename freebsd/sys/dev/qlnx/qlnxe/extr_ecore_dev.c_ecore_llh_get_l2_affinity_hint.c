
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {scalar_t__ l2_affin_hint; } ;
typedef enum ecore_eng { ____Placeholder_ecore_eng } ecore_eng ;


 int ECORE_ENG0 ;
 int ECORE_ENG1 ;

enum ecore_eng ecore_llh_get_l2_affinity_hint(struct ecore_dev *p_dev)
{
 return p_dev->l2_affin_hint ? ECORE_ENG1 : ECORE_ENG0;
}
