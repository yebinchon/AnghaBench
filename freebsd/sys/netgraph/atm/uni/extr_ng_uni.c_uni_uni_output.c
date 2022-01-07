
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct uni_msg {int dummy; } ;
struct uni_arg {int sig; int cookie; } ;
struct uni {int dummy; } ;
struct priv {int * upper; } ;
struct mbuf {int dummy; } ;
typedef int node_p ;
typedef enum uni_sig { ____Placeholder_uni_sig } uni_sig ;
typedef int arg ;


 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int uni_msg_destroy (struct uni_msg*) ;
 struct mbuf* uni_msg_pack_mbuf (struct uni_msg*,struct uni_arg*,int) ;

__attribute__((used)) static void
uni_uni_output(struct uni *uni, void *varg, enum uni_sig sig, u_int32_t cookie,
    struct uni_msg *msg)
{
 node_p node = (node_p)varg;
 struct priv *priv = NG_NODE_PRIVATE(node);
 struct mbuf *m;
 struct uni_arg arg;
 int error;

 if (priv->upper == ((void*)0)) {
  if (msg != ((void*)0))
   uni_msg_destroy(msg);
  return;
 }
 arg.sig = sig;
 arg.cookie = cookie;

 m = uni_msg_pack_mbuf(msg, &arg, sizeof(arg));
 if (msg != ((void*)0))
  uni_msg_destroy(msg);
 if (m == ((void*)0))
  return;

 NG_SEND_DATA_ONLY(error, priv->upper, m);
}
