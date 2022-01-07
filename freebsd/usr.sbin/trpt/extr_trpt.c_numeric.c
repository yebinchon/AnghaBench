
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;



__attribute__((used)) static int
numeric(const void *v1, const void *v2)
{
 const caddr_t *c1 = v1, *c2 = v2;

 return (*c1 - *c2);
}
