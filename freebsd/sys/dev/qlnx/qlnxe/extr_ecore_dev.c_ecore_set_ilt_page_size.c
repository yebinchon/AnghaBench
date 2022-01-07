
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_dev {int ilt_page_size; } ;



void ecore_set_ilt_page_size(struct ecore_dev *p_dev, u8 ilt_page_size)
{
 p_dev->ilt_page_size = ilt_page_size;
}
