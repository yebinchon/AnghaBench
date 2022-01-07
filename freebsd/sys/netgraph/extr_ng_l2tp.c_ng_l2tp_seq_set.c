
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_l2tp_seq_config {scalar_t__ xack; scalar_t__ nr; scalar_t__ ns; scalar_t__ rack; } ;
struct l2tp_seq {scalar_t__ ns; scalar_t__ nr; scalar_t__ rack; scalar_t__ xack; } ;
typedef TYPE_2__* priv_p ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; struct l2tp_seq seq; } ;


 int EBUSY ;
 int EINVAL ;

__attribute__((used)) static int
ng_l2tp_seq_set(priv_p priv, const struct ng_l2tp_seq_config *conf)
{
 struct l2tp_seq *const seq = &priv->seq;


 if (priv->conf.enabled)
  return (EBUSY);


 if (conf->xack != conf->nr || conf->ns != conf->rack)
  return (EINVAL);


 seq->ns = conf->ns;
 seq->nr = conf->nr;
 seq->rack = conf->rack;
 seq->xack = conf->xack;

 return (0);
}
