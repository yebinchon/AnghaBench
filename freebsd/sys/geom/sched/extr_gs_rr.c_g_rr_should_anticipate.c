
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_queue {int q_seekdist; int q_thinktime; } ;
struct bio {scalar_t__ bio_cmd; } ;
struct TYPE_2__ {int w_anticipate; int wait_ms; } ;


 scalar_t__ BIO_WRITE ;
 int g_savg_read (int *) ;
 scalar_t__ g_savg_valid (int *) ;
 int get_bounded (int *,int) ;
 TYPE_1__ me ;

__attribute__((used)) static inline int
g_rr_should_anticipate(struct g_rr_queue *qp, struct bio *bp)
{
 int wait = get_bounded(&me.wait_ms, 2);

 if (!me.w_anticipate && (bp->bio_cmd == BIO_WRITE))
  return (0);

 if (g_savg_valid(&qp->q_thinktime) &&
     g_savg_read(&qp->q_thinktime) > wait)
  return (0);

 if (g_savg_valid(&qp->q_seekdist) &&
     g_savg_read(&qp->q_seekdist) > 8192)
  return (0);

 return (1);
}
