
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct plut_entry {int dummy; } ;


 struct plut_entry* vmalloc (size_t) ;

__attribute__((used)) static struct plut_entry *
nm_alloc_plut(u_int nobj)
{
 size_t n = sizeof(struct plut_entry) * nobj;
 struct plut_entry *lut;
 lut = vmalloc(n);
 return lut;
}
