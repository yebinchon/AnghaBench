
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int dummy; } ;
struct unr {struct unrhdr* ptr; } ;



__attribute__((used)) static __inline int
is_bitmap(struct unrhdr *uh, struct unr *up)
{
 return (up->ptr != uh && up->ptr != ((void*)0));
}
