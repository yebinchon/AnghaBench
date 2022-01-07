
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int treelevels; int* inodesin; int* symbolsin; } ;
typedef TYPE_1__ unpack_descriptor_t ;



__attribute__((used)) static void
unpackd_fill_inodesin(const unpack_descriptor_t *unpackd, int level)
{






 if (level < unpackd->treelevels) {
  unpackd_fill_inodesin(unpackd, level + 1);
  unpackd->inodesin[level] = (unpackd->inodesin[level + 1] +
      unpackd->symbolsin[level + 1]) / 2;
 } else
  unpackd->inodesin[level] = 0;
}
