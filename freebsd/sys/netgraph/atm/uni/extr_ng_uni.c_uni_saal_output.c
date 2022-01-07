
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int dummy; } ;
struct uni {int dummy; } ;
struct sscfu_arg {int sig; } ;
struct priv {int * lower; int uni; } ;
struct mbuf {int dummy; } ;
typedef int node_p ;
typedef enum saal_sig { ____Placeholder_saal_sig } saal_sig ;
typedef int arg ;


 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int UNI_FAC_SAAL ;
 int dump_saal_signal (int ,int,struct uni_msg*,int) ;
 scalar_t__ uni_get_debug (int ,int ) ;
 int uni_msg_destroy (struct uni_msg*) ;
 struct mbuf* uni_msg_pack_mbuf (struct uni_msg*,struct sscfu_arg*,int) ;

__attribute__((used)) static void
uni_saal_output(struct uni *uni, void *varg, enum saal_sig sig, struct uni_msg *msg)
{
 node_p node = (node_p)varg;
 struct priv *priv = NG_NODE_PRIVATE(node);
 struct mbuf *m;
 struct sscfu_arg arg;
 int error;

 if (uni_get_debug(priv->uni, UNI_FAC_SAAL) > 0)
  dump_saal_signal(node, sig, msg, 1);

 if (priv->lower == ((void*)0)) {
  if (msg != ((void*)0))
   uni_msg_destroy(msg);
  return;
 }

 arg.sig = sig;

 m = uni_msg_pack_mbuf(msg, &arg, sizeof(arg));
 if (msg != ((void*)0))
  uni_msg_destroy(msg);
 if (m == ((void*)0))
  return;

 NG_SEND_DATA_ONLY(error, priv->lower, m);
}
