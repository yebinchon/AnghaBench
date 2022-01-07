
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nm_selinfo {int si; } ;


 int selrecord (struct thread*,int *) ;

void
nm_os_selrecord(struct thread *td, struct nm_selinfo *si)
{
 selrecord(td, &si->si);
}
