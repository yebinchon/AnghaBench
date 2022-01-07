
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_extent_path {scalar_t__ index_count; TYPE_1__* ep_header; int * ep_index; } ;
struct TYPE_2__ {scalar_t__ eh_ecount; } ;


 int * EXT_FIRST_INDEX (TYPE_1__*) ;
 int KASSERT (int ,char*) ;

__attribute__((used)) static int inline
ext4_ext_more_to_rm(struct ext4_extent_path *path)
{

 KASSERT(path->ep_index != ((void*)0),
     ("ext4_ext_more_to_rm: bad index from path"));

 if (path->ep_index < EXT_FIRST_INDEX(path->ep_header))
  return (0);

 if (path->ep_header->eh_ecount == path->index_count)
  return (0);

 return (1);
}
