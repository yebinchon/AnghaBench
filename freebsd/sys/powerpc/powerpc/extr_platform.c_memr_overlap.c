
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static int
memr_overlap(struct mem_region *r1, struct mem_region *r2)
{
 if ((r1->mr_start + r1->mr_size) < r2->mr_start ||
     (r2->mr_start + r2->mr_size) < r1->mr_start)
  return (FALSE);

 return (TRUE);
}
