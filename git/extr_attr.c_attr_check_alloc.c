
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {int dummy; } ;


 int check_vector_add (struct attr_check*) ;
 struct attr_check* xcalloc (int,int) ;

struct attr_check *attr_check_alloc(void)
{
 struct attr_check *c = xcalloc(1, sizeof(struct attr_check));


 check_vector_add(c);

 return c;
}
