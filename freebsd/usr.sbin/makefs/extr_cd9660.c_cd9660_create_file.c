
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int iso9660_disk ;
struct TYPE_10__ {int type; TYPE_1__* node; scalar_t__ fileDataLength; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_9__ {int * inode; } ;


 int CD9660_TYPE_FILE ;
 int CD9660_TYPE_VIRTUAL ;
 TYPE_2__* cd9660_create_virtual_entry (int *,char const*,TYPE_2__*,int,int) ;
 scalar_t__ cd9660_translate_node_common (int *,TYPE_2__*) ;
 int * ecalloc (int,int) ;

__attribute__((used)) static cd9660node *
cd9660_create_file(iso9660_disk *diskStructure, const char *name,
    cd9660node *parent, cd9660node *me)
{
 cd9660node *temp;

 temp = cd9660_create_virtual_entry(diskStructure, name, parent, 1, 1);
 if (temp == ((void*)0))
  return ((void*)0);

 temp->fileDataLength = 0;

 temp->type = CD9660_TYPE_FILE | CD9660_TYPE_VIRTUAL;

 temp->node->inode = ecalloc(1, sizeof(*temp->node->inode));
 *temp->node->inode = *me->node->inode;

 if (cd9660_translate_node_common(diskStructure, temp) == 0)
  return ((void*)0);
 return temp;
}
