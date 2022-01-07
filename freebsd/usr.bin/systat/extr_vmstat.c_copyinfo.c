
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Info {long* intrcnt; } ;


 int bcopy (long*,long*,int) ;
 int nintr ;

__attribute__((used)) static void
copyinfo(struct Info *from, struct Info *to)
{
 long *intrcnt;






 intrcnt = to->intrcnt;
 *to = *from;

 bcopy(from->intrcnt, to->intrcnt = intrcnt, nintr * sizeof (int));
}
