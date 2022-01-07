
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* inode; } ;
typedef TYPE_1__ fsnode ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
destroy_node(fsnode *n)
{

 assert(n != ((void*)0));
 assert(n->name != ((void*)0));
 assert(n->inode != ((void*)0));

 free(n->inode);
 free(n->name);
 free(n);
}
