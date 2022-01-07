
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bbr_sendmap {int r_flags; scalar_t__ r_end; scalar_t__ r_start; } ;


 int BBR_ACKED ;
 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LT (scalar_t__,scalar_t__) ;
 struct bbr_sendmap* TAILQ_NEXT (struct bbr_sendmap*,int ) ;
 struct bbr_sendmap* TAILQ_PREV (struct bbr_sendmap*,int ,int ) ;
 int bbr_head ;
 int r_next ;

__attribute__((used)) static int
bbr_sack_mergable(struct bbr_sendmap *at,
    uint32_t start, uint32_t end)
{
 struct bbr_sendmap *l_rsm;
 struct bbr_sendmap *r_rsm;


 l_rsm = TAILQ_PREV(at, bbr_head, r_next);
 r_rsm = TAILQ_NEXT(at, r_next);
 if (l_rsm && (l_rsm->r_flags & BBR_ACKED)) {

  if ((l_rsm->r_end == start) ||
      (SEQ_LT(start, l_rsm->r_end) &&
       SEQ_GT(end, l_rsm->r_end))) {







       return (1);
      }
 }
 if (r_rsm && (r_rsm->r_flags & BBR_ACKED)) {

  if ((r_rsm->r_start == end) ||
      (SEQ_LT(start, r_rsm->r_start) &&
       SEQ_GT(end, r_rsm->r_start))) {







   return (1);
  }
 }
 return (0);
}
