
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {scalar_t__ is_pic; } ;
struct atpic_intsrc {int dummy; } ;
struct atpic {int at_ioaddr; } ;


 int IMEN_MASK (struct atpic_intsrc*) ;
 int inb (int ) ;

__attribute__((used)) static int
atpic_source_pending(struct intsrc *isrc)
{
 struct atpic_intsrc *ai = (struct atpic_intsrc *)isrc;
 struct atpic *ap = (struct atpic *)isrc->is_pic;

 return (inb(ap->at_ioaddr) & IMEN_MASK(ai));
}
