
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int iso9660_disk ;
struct TYPE_13__ {int flags; int type; int name; } ;
typedef TYPE_2__ fsnode ;
struct TYPE_14__ {TYPE_2__* node; int cn_children; struct TYPE_14__* parent; scalar_t__ level; TYPE_1__* isoDirRecord; } ;
typedef TYPE_3__ cd9660node ;
struct TYPE_12__ {int name; } ;


 int FSNODE_F_HASSPEC ;
 int S_IFDIR ;
 int S_IFMT ;
 int S_IFREG ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int assert (int ) ;
 TYPE_3__* cd9660_allocate_cd9660node () ;
 int cd9660_convert_filename (int *,int ,int ,int) ;
 int cd9660_copy_stat_info (TYPE_3__*,TYPE_3__*,int) ;
 int cd9660_sorted_child_insert (TYPE_3__*,TYPE_3__*) ;
 int cn_next_child ;
 void* emalloc (int) ;
 int estrdup (char const*) ;

__attribute__((used)) static cd9660node *
cd9660_create_virtual_entry(iso9660_disk *diskStructure, const char *name,
    cd9660node *parent, int file, int insert)
{
 cd9660node *temp;
 fsnode * tfsnode;

 assert(parent != ((void*)0));

 temp = cd9660_allocate_cd9660node();
 if (temp == ((void*)0))
  return ((void*)0);

 tfsnode = emalloc(sizeof(*tfsnode));
 tfsnode->name = estrdup(name);
 temp->isoDirRecord = emalloc(sizeof(*temp->isoDirRecord));

 cd9660_convert_filename(diskStructure, tfsnode->name,
     temp->isoDirRecord->name, file);

 temp->node = tfsnode;
 temp->parent = parent;

 if (insert) {
  if (temp->parent != ((void*)0)) {
   temp->level = temp->parent->level + 1;
   if (!TAILQ_EMPTY(&temp->parent->cn_children))
    cd9660_sorted_child_insert(temp->parent, temp);
   else
    TAILQ_INSERT_HEAD(&temp->parent->cn_children,
        temp, cn_next_child);
  }
 }

 if (parent->node != ((void*)0)) {
  tfsnode->type = parent->node->type;
 }


 tfsnode->type &= ~(S_IFMT);
 if (file)
  tfsnode->type |= S_IFREG;
 else
  tfsnode->type |= S_IFDIR;


 tfsnode->flags &= ~(FSNODE_F_HASSPEC);



 return temp;
}
