
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_node {int an_cached; } ;



__attribute__((used)) static void
autofs_cache_callout(void *context)
{
 struct autofs_node *anp;

 anp = context;
 anp->an_cached = 0;
}
