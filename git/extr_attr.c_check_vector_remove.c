
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct attr_check {int dummy; } ;
struct TYPE_2__ {int nr; struct attr_check** checks; } ;


 int BUG (char*) ;
 TYPE_1__ check_vector ;
 int vector_lock () ;
 int vector_unlock () ;

__attribute__((used)) static void check_vector_remove(struct attr_check *check)
{
 int i;

 vector_lock();


 for (i = 0; i < check_vector.nr; i++)
  if (check_vector.checks[i] == check)
   break;

 if (i >= check_vector.nr)
  BUG("no entry found");


 for (; i < check_vector.nr - 1; i++)
  check_vector.checks[i] = check_vector.checks[i + 1];

 check_vector.nr--;

 vector_unlock();
}
