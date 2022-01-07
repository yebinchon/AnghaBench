
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct resource_i* __r_i; } ;
struct resource_i {TYPE_1__ r_r; } ;


 int M_RMAN ;
 int M_ZERO ;
 struct resource_i* malloc (int,int ,int) ;

__attribute__((used)) static __inline struct resource_i *
int_alloc_resource(int malloc_flag)
{
 struct resource_i *r;

 r = malloc(sizeof *r, M_RMAN, malloc_flag | M_ZERO);
 if (r != ((void*)0)) {
  r->r_r.__r_i = r;
 }
 return (r);
}
