
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {int xi_vector; } ;
struct intsrc {int dummy; } ;



__attribute__((used)) static int
xen_intr_vector(struct intsrc *base_isrc)
{
 struct xenisrc *isrc = (struct xenisrc *)base_isrc;

 return (isrc->xi_vector);
}
