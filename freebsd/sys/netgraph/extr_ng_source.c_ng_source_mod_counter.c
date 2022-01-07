
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;
struct ng_source_embed_cnt_info {int next_val; int max_val; int min_val; int flags; scalar_t__ width; int offset; } ;
struct mbuf {int dummy; } ;
typedef int sc_p ;
typedef scalar_t__ caddr_t ;


 int htonl (int) ;
 int ng_source_packet_mod (int ,struct mbuf*,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
ng_source_mod_counter(sc_p sc, struct ng_source_embed_cnt_info *cnt,
    struct mbuf *m, int increment)
{
 caddr_t cp;
 uint32_t val;

 val = htonl(cnt->next_val);
 cp = (caddr_t)&val + sizeof(val) - cnt->width;
 ng_source_packet_mod(sc, m, cnt->offset, cnt->width, cp, cnt->flags);

 if (increment) {
  cnt->next_val += increment;

  if (increment > 0 && cnt->next_val > cnt->max_val) {
   cnt->next_val = cnt->min_val - 1 +
       (cnt->next_val - cnt->max_val);
   if (cnt->next_val > cnt->max_val)
    cnt->next_val = cnt->max_val;
  } else if (increment < 0 && cnt->next_val < cnt->min_val) {
   cnt->next_val = cnt->max_val + 1 +
       (cnt->next_val - cnt->min_val);
   if (cnt->next_val < cnt->min_val)
    cnt->next_val = cnt->max_val;
  }
 }
}
