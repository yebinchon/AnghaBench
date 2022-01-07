
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_node {int an_name; int an_children; int an_mount; } ;


 int AUTOFS_ASSERT_LOCKED (int ) ;
 int ENOENT ;
 int M_AUTOFS ;
 struct autofs_node* RB_FIND (int ,int *,struct autofs_node*) ;
 int autofs_node_tree ;
 int free (int ,int ) ;
 int strdup (char const*,int ) ;
 int strndup (char const*,int,int ) ;

int
autofs_node_find(struct autofs_node *parent, const char *name,
    int namelen, struct autofs_node **anpp)
{
 struct autofs_node *anp, find;
 int error;

 AUTOFS_ASSERT_LOCKED(parent->an_mount);

 if (namelen >= 0)
  find.an_name = strndup(name, namelen, M_AUTOFS);
 else
  find.an_name = strdup(name, M_AUTOFS);

 anp = RB_FIND(autofs_node_tree, &parent->an_children, &find);
 if (anp != ((void*)0)) {
  error = 0;
  if (anpp != ((void*)0))
   *anpp = anp;
 } else {
  error = ENOENT;
 }

 free(find.an_name, M_AUTOFS);

 return (error);
}
