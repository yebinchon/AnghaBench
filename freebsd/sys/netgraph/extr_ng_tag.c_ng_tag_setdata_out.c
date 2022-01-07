
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_tag_hookout {scalar_t__ tag_data; int tag_len; int tag_id; int tag_cookie; } ;
typedef int hook_p ;
typedef TYPE_1__* hinfo_p ;
struct TYPE_3__ {struct ng_tag_hookout* out; void* out_tag_data; int out_tag_len; int out_tag_id; int out_tag_cookie; } ;


 int M_NETGRAPH_TAG ;
 int M_WAITOK ;
 TYPE_1__* NG_HOOK_PRIVATE (int ) ;
 int NG_TAG_HOOKOUT_SIZE (int ) ;
 int bcopy (struct ng_tag_hookout const*,struct ng_tag_hookout*,int) ;
 int free (struct ng_tag_hookout*,int ) ;
 struct ng_tag_hookout* malloc (int,int ,int ) ;

__attribute__((used)) static int
ng_tag_setdata_out(hook_p hook, const struct ng_tag_hookout *hp0)
{
 const hinfo_p hip = NG_HOOK_PRIVATE(hook);
 struct ng_tag_hookout *hp;
 int size;


 size = NG_TAG_HOOKOUT_SIZE(hp0->tag_len);
 hp = malloc(size, M_NETGRAPH_TAG, M_WAITOK);

 bcopy(hp0, hp, size);


 if (hip->out != ((void*)0))
  free(hip->out, M_NETGRAPH_TAG);
 hip->out = hp;


 hip->out_tag_cookie = hip->out->tag_cookie;
 hip->out_tag_id = hip->out->tag_id;
 hip->out_tag_len = hip->out->tag_len;
 hip->out_tag_data = (void*)(hip->out->tag_data);
 return (0);
}
