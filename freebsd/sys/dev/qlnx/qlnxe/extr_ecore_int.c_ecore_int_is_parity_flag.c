
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {int dummy; } ;
struct aeu_invert_reg_bit {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ATTENTION_PARITY ;
 TYPE_1__* ecore_int_aeu_translate (struct ecore_hwfn*,struct aeu_invert_reg_bit*) ;

__attribute__((used)) static bool ecore_int_is_parity_flag(struct ecore_hwfn *p_hwfn,
         struct aeu_invert_reg_bit *p_bit)
{
 return !!(ecore_int_aeu_translate(p_hwfn, p_bit)->flags &
    ATTENTION_PARITY);
}
