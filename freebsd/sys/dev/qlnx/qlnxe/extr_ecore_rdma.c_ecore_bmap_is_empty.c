
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_bmap {scalar_t__ max_count; int bitmap; } ;


 scalar_t__ OSAL_FIND_FIRST_BIT (int ,scalar_t__) ;

__attribute__((used)) static bool ecore_bmap_is_empty(struct ecore_bmap *bmap)
{
 return (bmap->max_count ==
  OSAL_FIND_FIRST_BIT(bmap->bitmap, bmap->max_count));
}
