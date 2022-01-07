
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct possible_tag {scalar_t__ depth; scalar_t__ found_order; } ;



__attribute__((used)) static int compare_pt(const void *a_, const void *b_)
{
 struct possible_tag *a = (struct possible_tag *)a_;
 struct possible_tag *b = (struct possible_tag *)b_;
 if (a->depth != b->depth)
  return a->depth - b->depth;
 if (a->found_order != b->found_order)
  return a->found_order - b->found_order;
 return 0;
}
