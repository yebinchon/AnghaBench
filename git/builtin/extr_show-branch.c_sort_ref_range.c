
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QSORT (scalar_t__,int,int ) ;
 int compare_ref_name ;
 scalar_t__ ref_name ;

__attribute__((used)) static void sort_ref_range(int bottom, int top)
{
 QSORT(ref_name + bottom, top - bottom, compare_ref_name);
}
