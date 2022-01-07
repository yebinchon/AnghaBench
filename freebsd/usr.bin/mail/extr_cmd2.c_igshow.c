
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ignoretab {int i_count; struct ignore** i_head; } ;
struct ignore {int i_field; struct ignore* i_link; } ;


 int HSHSIZE ;
 int igcomp ;
 int printf (char*,char const*) ;
 int qsort (char**,int ,int,int ) ;
 scalar_t__ salloc (int) ;

int
igshow(struct ignoretab *tab, const char *which)
{
 int h;
 struct ignore *igp;
 char **ap, **ring;

 if (tab->i_count == 0) {
  printf("No fields currently being %s.\n", which);
  return (0);
 }
 ring = (char **)salloc((tab->i_count + 1) * sizeof(char *));
 ap = ring;
 for (h = 0; h < HSHSIZE; h++)
  for (igp = tab->i_head[h]; igp != ((void*)0); igp = igp->i_link)
   *ap++ = igp->i_field;
 *ap = 0;
 qsort(ring, tab->i_count, sizeof(char *), igcomp);
 for (ap = ring; *ap != 0; ap++)
  printf("%s\n", *ap);
 return (0);
}
