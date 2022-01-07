
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_connobj {struct smb_connobj* co_parent; int co_children; } ;


 int SLIST_INSERT_HEAD (int *,struct smb_connobj*,int ) ;
 int co_next ;
 int smb_co_ref (struct smb_connobj*) ;

__attribute__((used)) static void
smb_co_addchild(struct smb_connobj *parent, struct smb_connobj *child)
{

 smb_co_ref(parent);
 SLIST_INSERT_HEAD(&parent->co_children, child, co_next);
 child->co_parent = parent;
}
