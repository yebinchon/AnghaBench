
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ type; int contents; int symlink; TYPE_3__* inode; struct TYPE_9__* parent; int name; } ;
typedef TYPE_2__ fsnode ;
struct TYPE_8__ {int st_mode; } ;
struct TYPE_10__ {TYPE_1__ st; } ;


 int S_IFLNK ;
 int S_IFMT ;
 int S_IFREG ;
 void* ecalloc (int,int) ;
 int estrdup (char const*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static fsnode *
create_node(const char *name, u_int type, fsnode *parent, fsnode *global)
{
 fsnode *n;

 n = ecalloc(1, sizeof(*n));
 n->name = estrdup(name);
 n->type = (type == 0) ? global->type : type;
 n->parent = parent;

 n->inode = ecalloc(1, sizeof(*n->inode));


 memcpy(n->inode, global->inode, sizeof(*n->inode));
 n->inode->st.st_mode = (n->inode->st.st_mode & ~S_IFMT) | n->type;

 if (n->type == S_IFLNK)
  n->symlink = global->symlink;
 else if (n->type == S_IFREG)
  n->contents = global->contents;

 return (n);
}
