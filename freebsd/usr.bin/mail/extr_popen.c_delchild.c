
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child {struct child* link; } ;


 struct child* child ;
 struct child* child_freelist ;

__attribute__((used)) static void
delchild(struct child *cp)
{
 struct child **cpp;

 for (cpp = &child; *cpp != cp; cpp = &(*cpp)->link)
  ;
 *cpp = cp->link;
 cp->link = child_freelist;
 child_freelist = cp;
}
