
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int iso9660_disk ;
struct TYPE_12__ {scalar_t__ type; int cn_children; struct TYPE_12__* dot_dot_record; struct TYPE_12__* dot_record; TYPE_1__* isoDirRecord; struct TYPE_12__* parent; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_11__ {int* length; } ;


 scalar_t__ CD9660_TYPE_DOT ;
 scalar_t__ CD9660_TYPE_DOTDOT ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,TYPE_2__*,TYPE_2__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int assert (int ) ;
 TYPE_2__* cd9660_create_virtual_entry (int *,char*,TYPE_2__*,int ,int ) ;
 int cn_next_child ;

__attribute__((used)) static cd9660node *
cd9660_create_special_directory(iso9660_disk *diskStructure, u_char type,
    cd9660node *parent)
{
 cd9660node *temp, *first;
 char na[2];

 assert(parent != ((void*)0));

 if (type == CD9660_TYPE_DOT)
  na[0] = 0;
 else if (type == CD9660_TYPE_DOTDOT)
  na[0] = 1;
 else
  return 0;

 na[1] = 0;
 if ((temp = cd9660_create_virtual_entry(diskStructure, na, parent,
     0, 0)) == ((void*)0))
  return ((void*)0);

 temp->parent = parent;
 temp->type = type;
 temp->isoDirRecord->length[0] = 34;

 if (type == CD9660_TYPE_DOT) {
  parent->dot_record = temp;
  TAILQ_INSERT_HEAD(&parent->cn_children, temp, cn_next_child);

 } else if (type == CD9660_TYPE_DOTDOT) {
  parent->dot_dot_record = temp;




  if ((first = TAILQ_FIRST(&parent->cn_children)) == ((void*)0) ||
      (first->type & CD9660_TYPE_DOT) == 0) {
   TAILQ_INSERT_HEAD(&parent->cn_children, temp,
       cn_next_child);
  } else {
   TAILQ_INSERT_AFTER(&parent->cn_children, first, temp,
       cn_next_child);
  }
 }

 return temp;
}
