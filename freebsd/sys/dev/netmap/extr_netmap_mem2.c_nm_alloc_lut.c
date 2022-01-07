
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct lut_entry {int dummy; } ;


 struct lut_entry* nm_os_malloc (size_t) ;
 struct lut_entry* vmalloc (size_t) ;

__attribute__((used)) static struct lut_entry *
nm_alloc_lut(u_int nobj)
{
 size_t n = sizeof(struct lut_entry) * nobj;
 struct lut_entry *lut;

 lut = vmalloc(n);



 return lut;
}
