
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int dummy; } ;
struct mtx {int dummy; } ;


 struct unrhdr* Malloc (int) ;
 int init_unrhdr (struct unrhdr*,int,int,struct mtx*) ;

struct unrhdr *
new_unrhdr(int low, int high, struct mtx *mutex)
{
 struct unrhdr *uh;

 uh = Malloc(sizeof *uh);
 init_unrhdr(uh, low, high, mutex);
 return (uh);
}
