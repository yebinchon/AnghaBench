
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int fail_err (char*,int,int) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_getvalue (int ,int*) ;

__attribute__((used)) static int
checkvalue(semid_t id, int expected)
{
 int val;

 if (ksem_getvalue(id, &val) < 0) {
  fail_errno("ksem_getvalue");
  return (-1);
 }
 if (val != expected) {
  fail_err("sem value should be %d instead of %d", expected, val);
  return (-1);
 }
 return (0);
}
