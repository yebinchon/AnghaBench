
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
typedef int item_p ;
typedef int * hook_p ;
typedef TYPE_3__* hinfo_p ;
struct TYPE_5__ {int recvOctets; int recvMatchOctets; int xmitOctets; int xmitFrames; int recvMatchFrames; int recvFrames; } ;
struct TYPE_6__ {scalar_t__ in_tag_cookie; scalar_t__ in_tag_id; scalar_t__ in_tag_len; scalar_t__ out_tag_cookie; scalar_t__ out_tag_id; scalar_t__ out_tag_len; int out_tag_data; TYPE_2__ stats; int * hi_nonmatch; int * hi_match; scalar_t__ strip; int in_tag_data; } ;


 int M_NOWAIT ;
 struct mbuf* NGI_M (int ) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FWD_ITEM_HOOK (int,int ,int *) ;
 void* NG_HOOK_PRIVATE (int *) ;
 struct m_tag* m_tag_alloc (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int m_tag_delete (struct mbuf*,struct m_tag*) ;
 struct m_tag* m_tag_locate (struct mbuf*,scalar_t__,scalar_t__,struct m_tag*) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 scalar_t__ memcmp (void*,int ,scalar_t__) ;
 int memcpy (void*,int ,scalar_t__) ;

__attribute__((used)) static int
ng_tag_rcvdata(hook_p hook, item_p item)
{
 struct mbuf *m;
 struct m_tag *tag = ((void*)0);
 const hinfo_p hip = NG_HOOK_PRIVATE(hook);
 uint16_t type, tag_len;
 uint32_t cookie;
 hinfo_p dhip;
 hook_p dest;
 int totlen;
 int found = 0, error = 0;

 m = NGI_M(item);
 totlen = m->m_pkthdr.len;







 cookie = hip->in_tag_cookie;
 type = hip->in_tag_id;
 tag_len = hip->in_tag_len;
 if ((cookie != 0) || (type != 0)) {
  tag = m_tag_locate(m, cookie, type, ((void*)0));
  while (tag != ((void*)0)) {
   if (memcmp((void *)(tag + 1),
       hip->in_tag_data, tag_len) == 0) {
    found = 1;
    break;
   }
   tag = m_tag_locate(m, cookie, type, tag);
  }
 }


 if (found) {




  if (hip->strip)
   m_tag_delete(m, tag);
  dest = hip->hi_match;
 } else
  dest = hip->hi_nonmatch;
 if (dest == ((void*)0)) {
  NG_FREE_ITEM(item);
  return (0);
 }


 dhip = NG_HOOK_PRIVATE(dest);






 cookie = dhip->out_tag_cookie;
 type = dhip->out_tag_id;
 tag_len = dhip->out_tag_len;

 if ((cookie != 0) || (type != 0)) {
  tag = m_tag_alloc(cookie, type, tag_len, M_NOWAIT);

  if (tag != ((void*)0)) {
   if (tag_len != 0) {

    memcpy((void *)(tag + 1),
        dhip->out_tag_data, tag_len);
   }
   m_tag_prepend(m, tag);
  }
 }

 NG_FWD_ITEM_HOOK(error, item, dest);
 return (error);
}
