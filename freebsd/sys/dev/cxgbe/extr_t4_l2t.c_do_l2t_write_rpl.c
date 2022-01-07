
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_iq {int dummy; } ;
struct rss_header {int dummy; } ;
struct mbuf {int dummy; } ;
struct cpl_l2t_write_rpl {scalar_t__ status; } ;


 scalar_t__ CPL_ERR_NONE ;
 int EINVAL ;
 unsigned int GET_TID (struct cpl_l2t_write_rpl const*) ;
 unsigned int L2T_SIZE ;
 int LOG_ERR ;
 scalar_t__ __predict_false (int) ;
 int log (int ,char*,scalar_t__,unsigned int) ;

int
do_l2t_write_rpl(struct sge_iq *iq, const struct rss_header *rss,
    struct mbuf *m)
{
 const struct cpl_l2t_write_rpl *rpl = (const void *)(rss + 1);
 unsigned int tid = GET_TID(rpl);
 unsigned int idx = tid % L2T_SIZE;

 if (__predict_false(rpl->status != CPL_ERR_NONE)) {
  log(LOG_ERR,
      "Unexpected L2T_WRITE_RPL (%u) for entry at hw_idx %u\n",
      rpl->status, idx);
  return (EINVAL);
 }

 return (0);
}
