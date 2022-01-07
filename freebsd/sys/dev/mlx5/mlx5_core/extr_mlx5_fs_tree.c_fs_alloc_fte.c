
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct fs_fte {unsigned int index; int action; int dests; int flow_tag; scalar_t__ dests_size; TYPE_1__ base; int val; } ;


 int ENOMEM ;
 struct fs_fte* ERR_PTR (int ) ;
 int FS_TYPE_FLOW_ENTRY ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct fs_fte* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static struct fs_fte *fs_alloc_fte(u8 action,
       u32 flow_tag,
       u32 *match_value,
       unsigned int index)
{
 struct fs_fte *fte;


 fte = kzalloc(sizeof(*fte), GFP_KERNEL);
 if (!fte)
  return ERR_PTR(-ENOMEM);

 memcpy(fte->val, match_value, sizeof(fte->val));
 fte->base.type = FS_TYPE_FLOW_ENTRY;
 fte->dests_size = 0;
 fte->flow_tag = flow_tag;
 fte->index = index;
 INIT_LIST_HEAD(&fte->dests);
 fte->action = action;

 return fte;
}
