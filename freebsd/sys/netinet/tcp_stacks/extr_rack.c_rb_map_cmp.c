
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rack_sendmap {int r_end; int r_start; } ;


 scalar_t__ SEQ_GEQ (int ,int ) ;
 scalar_t__ SEQ_LT (int ,int ) ;

__attribute__((used)) static __inline int
rb_map_cmp(struct rack_sendmap *b, struct rack_sendmap *a)
{
 if (SEQ_GEQ(b->r_start, a->r_start) &&
     SEQ_LT(b->r_start, a->r_end)) {
  return (0);
 } else if (SEQ_GEQ(b->r_start, a->r_end)) {
  return (1);
 }
 return (-1);
}
