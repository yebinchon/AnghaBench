
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int dummy; } ;
struct ecore_chain {int mode; } ;





 int ecore_chain_free_next_ptr (struct ecore_dev*,struct ecore_chain*) ;
 int ecore_chain_free_pbl (struct ecore_dev*,struct ecore_chain*) ;
 int ecore_chain_free_single (struct ecore_dev*,struct ecore_chain*) ;

void ecore_chain_free(struct ecore_dev *p_dev,
        struct ecore_chain *p_chain)
{
 switch (p_chain->mode) {
 case 130:
  ecore_chain_free_next_ptr(p_dev, p_chain);
  break;
 case 128:
  ecore_chain_free_single(p_dev, p_chain);
  break;
 case 129:
  ecore_chain_free_pbl(p_dev, p_chain);
  break;
 }
}
