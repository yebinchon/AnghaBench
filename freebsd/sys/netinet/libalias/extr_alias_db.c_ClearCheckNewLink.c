
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {scalar_t__ newDefaultLink; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;

void
ClearCheckNewLink(struct libalias *la)
{

 LIBALIAS_LOCK_ASSERT(la);
 la->newDefaultLink = 0;
}
