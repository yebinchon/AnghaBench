
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct ng_l2tp_config {scalar_t__ peer_win; int enabled; } ;
struct l2tp_seq {scalar_t__ wmax; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_4__ {struct l2tp_seq seq; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ L2TP_MAX_XWIN ;
 int ng_l2tp_seq_reset (TYPE_1__*) ;

__attribute__((used)) static int
ng_l2tp_seq_adjust(priv_p priv, const struct ng_l2tp_config *conf)
{
 struct l2tp_seq *const seq = &priv->seq;
 u_int16_t new_wmax;


 if (!conf->enabled) {
  ng_l2tp_seq_reset(priv);
  return (0);
 }


 new_wmax = conf->peer_win;
 if (new_wmax > L2TP_MAX_XWIN)
  new_wmax = L2TP_MAX_XWIN;
 if (new_wmax == 0)
  return (EINVAL);
 if (new_wmax < seq->wmax)
  return (EBUSY);
 seq->wmax = new_wmax;


 return (0);
}
