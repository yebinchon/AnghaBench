
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic {int dummy; } ;
struct atpic {int dummy; } ;


 size_t SLAVE ;
 struct atpic* atpics ;
 scalar_t__ elcr_found ;
 int elcr_resume () ;
 int i8259_init (struct atpic*,int) ;

__attribute__((used)) static void
atpic_resume(struct pic *pic, bool suspend_cancelled)
{
 struct atpic *ap = (struct atpic *)pic;

 i8259_init(ap, ap == &atpics[SLAVE]);
 if (ap == &atpics[SLAVE] && elcr_found)
  elcr_resume();
}
