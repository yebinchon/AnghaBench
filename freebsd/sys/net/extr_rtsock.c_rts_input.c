
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockproto {unsigned short sp_protocol; int sp_family; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;


 int PACKET_TAG_RTSOCKFAM ;
 int PF_ROUTE ;
 int m_tag_delete (struct mbuf*,struct m_tag*) ;
 struct m_tag* m_tag_find (struct mbuf*,int ,int *) ;
 int raw_input_ext (struct mbuf*,struct sockproto*,int *,int ) ;
 int raw_input_rts_cb ;
 int route_src ;

__attribute__((used)) static void
rts_input(struct mbuf *m)
{
 struct sockproto route_proto;
 unsigned short *family;
 struct m_tag *tag;

 route_proto.sp_family = PF_ROUTE;
 tag = m_tag_find(m, PACKET_TAG_RTSOCKFAM, ((void*)0));
 if (tag != ((void*)0)) {
  family = (unsigned short *)(tag + 1);
  route_proto.sp_protocol = *family;
  m_tag_delete(m, tag);
 } else
  route_proto.sp_protocol = 0;

 raw_input_ext(m, &route_proto, &route_src, raw_input_rts_cb);
}
