
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct unionfs_node_hashhead {int dummy; } ;
struct unionfs_node {char un_hashmask; struct unionfs_node_hashhead* un_hashtbl; } ;


 struct unionfs_node* VTOUNIONFS (struct vnode*) ;

__attribute__((used)) static struct unionfs_node_hashhead *
unionfs_get_hashhead(struct vnode *dvp, char *path)
{
 int count;
 char hash;
 struct unionfs_node *unp;

 hash = 0;
 unp = VTOUNIONFS(dvp);
 if (path != ((void*)0)) {
  for (count = 0; path[count]; count++)
   hash += path[count];
 }

 return (&(unp->un_hashtbl[hash & (unp->un_hashmask)]));
}
