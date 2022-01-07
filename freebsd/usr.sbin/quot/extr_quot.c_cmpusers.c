
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user {int space; } ;



__attribute__((used)) static int
cmpusers(const void *v1, const void *v2)
{
 const struct user *u1, *u2;
 u1 = (const struct user *)v1;
 u2 = (const struct user *)v2;

 return u2->space - u1->space;
}
