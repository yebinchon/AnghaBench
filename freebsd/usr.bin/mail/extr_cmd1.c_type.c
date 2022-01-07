
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int type1 (int*,int,int ) ;

int
type(void *v)
{
 int *msgvec = v;

 return (type1(msgvec, 1, 0));
}
