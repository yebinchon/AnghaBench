
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cset {int cs_havecache; int cs_invert; int * cs_classes; int * cs_root; } ;


 struct cset* malloc (int) ;

struct cset *
cset_alloc(void)
{
 struct cset *cs;

 if ((cs = malloc(sizeof(*cs))) == ((void*)0))
  return (((void*)0));
 cs->cs_root = ((void*)0);
 cs->cs_classes = ((void*)0);
 cs->cs_havecache = 0;
 cs->cs_invert = 0;
 return (cs);
}
