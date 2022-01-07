
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic {int dummy; } ;


 int lapic_setup (int ) ;

__attribute__((used)) static void
lapic_resume(struct pic *pic, bool suspend_cancelled)
{

 lapic_setup(0);
}
