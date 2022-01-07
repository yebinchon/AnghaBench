
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_tag_hookin {scalar_t__ tag_data; int strip; int tag_len; int tag_id; int tag_cookie; int ifNotMatch; int ifMatch; } ;
typedef int hook_p ;
typedef TYPE_1__* hinfo_p ;
struct TYPE_3__ {struct ng_tag_hookin* in; void* in_tag_data; int strip; int in_tag_len; int in_tag_id; int in_tag_cookie; void* hi_nonmatch; void* hi_match; } ;


 int M_NETGRAPH_TAG ;
 int M_WAITOK ;
 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_HOOK_PRIVATE (int ) ;
 int NG_TAG_HOOKIN_SIZE (int ) ;
 int bcopy (struct ng_tag_hookin const*,struct ng_tag_hookin*,int) ;
 int free (struct ng_tag_hookin*,int ) ;
 struct ng_tag_hookin* malloc (int,int ,int ) ;
 void* ng_findhook (int ,int ) ;

__attribute__((used)) static int
ng_tag_setdata_in(hook_p hook, const struct ng_tag_hookin *hp0)
{
 const hinfo_p hip = NG_HOOK_PRIVATE(hook);
 struct ng_tag_hookin *hp;
 int size;


 size = NG_TAG_HOOKIN_SIZE(hp0->tag_len);
 hp = malloc(size, M_NETGRAPH_TAG, M_WAITOK);

 bcopy(hp0, hp, size);


 if (hip->in != ((void*)0))
  free(hip->in, M_NETGRAPH_TAG);
 hip->in = hp;
 hip->hi_match = ng_findhook(NG_HOOK_NODE(hook), hip->in->ifMatch);
 hip->hi_nonmatch = ng_findhook(NG_HOOK_NODE(hook), hip->in->ifNotMatch);


 hip->in_tag_cookie = hip->in->tag_cookie;
 hip->in_tag_id = hip->in->tag_id;
 hip->in_tag_len = hip->in->tag_len;
 hip->strip = hip->in->strip;
 hip->in_tag_data = (void*)(hip->in->tag_data);
 return (0);
}
