
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {int dummy; } ;


 int attr_check_clear (struct attr_check*) ;
 int check_vector_remove (struct attr_check*) ;
 int free (struct attr_check*) ;

void attr_check_free(struct attr_check *check)
{
 if (check) {

  check_vector_remove(check);

  attr_check_clear(check);
  free(check);
 }
}
