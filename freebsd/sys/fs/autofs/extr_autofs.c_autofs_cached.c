
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_node {int an_cached; scalar_t__ an_wildcards; int * an_parent; struct autofs_mount* an_mount; } ;
struct autofs_mount {int dummy; } ;


 int AUTOFS_ASSERT_UNLOCKED (struct autofs_mount*) ;
 int AUTOFS_SLOCK (struct autofs_mount*) ;
 int AUTOFS_SUNLOCK (struct autofs_mount*) ;
 int autofs_node_find (struct autofs_node*,char const*,int,int *) ;

bool
autofs_cached(struct autofs_node *anp, const char *component, int componentlen)
{
 int error;
 struct autofs_mount *amp;

 amp = anp->an_mount;

 AUTOFS_ASSERT_UNLOCKED(amp);
 if (anp->an_parent == ((void*)0) && componentlen != 0 && anp->an_wildcards) {
  AUTOFS_SLOCK(amp);
  error = autofs_node_find(anp, component, componentlen, ((void*)0));
  AUTOFS_SUNLOCK(amp);
  if (error != 0)
   return (0);
 }

 return (anp->an_cached);
}
