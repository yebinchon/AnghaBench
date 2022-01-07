
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int iso9660_disk ;
struct TYPE_6__ {TYPE_1__* isoDirRecord; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_5__ {scalar_t__* length; } ;


 int assert (int ) ;
 scalar_t__ cd9660_susp_handle_continuation_common (int *,TYPE_2__*,int) ;

__attribute__((used)) static int
cd9660_susp_handle_continuation(iso9660_disk *diskStructure, cd9660node *node)
{
 assert (node != ((void*)0));


 if (cd9660_susp_handle_continuation_common(diskStructure,
  node,(int)(node->isoDirRecord->length[0])) < 0)
  return 0;

 return 1;
}
