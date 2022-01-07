
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {int dummy; } ;


 int _atpic_eoi_master (struct intsrc*) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

__attribute__((used)) static void
atpic_eoi_master(struct intsrc *isrc)
{

 spinlock_enter();
 _atpic_eoi_master(isrc);
 spinlock_exit();

}
