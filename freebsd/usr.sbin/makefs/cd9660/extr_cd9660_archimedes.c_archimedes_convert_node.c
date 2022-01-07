
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct ISO_ARCHIMEDES {int ro_attr; int cdfs_attr; int execaddr; int loadaddr; int magic; } ;
struct TYPE_9__ {int su_tail_size; int * su_tail_data; TYPE_3__* node; } ;
typedef TYPE_4__ cd9660node ;
struct TYPE_8__ {char* name; TYPE_2__* inode; } ;
struct TYPE_6__ {int st_mtime; } ;
struct TYPE_7__ {TYPE_1__ st; } ;


 int CDFS_PLING ;
 int RO_ACCESS_OR ;
 int RO_ACCESS_UR ;
 int assert (int) ;
 int cd9660_731 (int,int ) ;
 struct ISO_ARCHIMEDES* ecalloc (int,int) ;
 int memcpy (int ,char*,int) ;
 int riscos_date (int ) ;
 size_t strlen (char*) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void
archimedes_convert_node(cd9660node *node)
{
 struct ISO_ARCHIMEDES *arc;
 size_t len;
 int type = -1;
 uint64_t stamp;

 if (node->su_tail_data != ((void*)0))

  return;

 len = strlen(node->node->name);
 if (len < 1) return;

 if (len >= 4 && node->node->name[len-4] == ',')

  type = strtoul(node->node->name + len - 3, ((void*)0), 16);
 if (type == -1 && node->node->name[0] != '!')
  return;
 if (type == -1) type = 0;

 assert(sizeof(*arc) == 32);
 arc = ecalloc(1, sizeof(*arc));

 stamp = riscos_date(node->node->inode->st.st_mtime);

 memcpy(arc->magic, "ARCHIMEDES", 10);
 cd9660_731(0xfff00000 | (type << 8) | (stamp >> 32), arc->loadaddr);
 cd9660_731(stamp & 0x00ffffffffULL, arc->execaddr);
 arc->ro_attr = RO_ACCESS_UR | RO_ACCESS_OR;
 arc->cdfs_attr = node->node->name[0] == '!' ? CDFS_PLING : 0;
 node->su_tail_data = (void *)arc;
 node->su_tail_size = sizeof(*arc);
}
