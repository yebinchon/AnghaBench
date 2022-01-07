
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {scalar_t__ is_pic; } ;
struct atpic_intsrc {int dummy; } ;
struct atpic {int dummy; } ;


 int IRQ (struct atpic*,struct atpic_intsrc*) ;

__attribute__((used)) static int
atpic_vector(struct intsrc *isrc)
{
 struct atpic_intsrc *ai = (struct atpic_intsrc *)isrc;
 struct atpic *ap = (struct atpic *)isrc->is_pic;

 return (IRQ(ap, ai));
}
