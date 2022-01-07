
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int attn_clr_en; } ;



void ecore_int_attn_clr_enable(struct ecore_dev *p_dev, bool clr_enable)
{
 p_dev->attn_clr_en = clr_enable;
}
