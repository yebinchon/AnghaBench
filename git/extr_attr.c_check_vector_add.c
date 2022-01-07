
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct attr_check {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; struct attr_check** checks; int alloc; } ;


 int ALLOC_GROW (struct attr_check**,scalar_t__,int ) ;
 TYPE_1__ check_vector ;
 int vector_lock () ;
 int vector_unlock () ;

__attribute__((used)) static void check_vector_add(struct attr_check *c)
{
 vector_lock();

 ALLOC_GROW(check_vector.checks,
     check_vector.nr + 1,
     check_vector.alloc);
 check_vector.checks[check_vector.nr++] = c;

 vector_unlock();
}
