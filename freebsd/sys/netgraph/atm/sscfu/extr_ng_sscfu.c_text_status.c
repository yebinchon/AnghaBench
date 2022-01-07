
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sbuf {int dummy; } ;
struct priv {scalar_t__ enabled; int sscf; scalar_t__ lower; scalar_t__ upper; } ;
typedef int node_p ;


 int NG_HOOK_NAME (scalar_t__) ;
 int NG_HOOK_NODE (scalar_t__) ;
 scalar_t__ NG_HOOK_PEER (scalar_t__) ;
 int NG_NODE_NAME (int ) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int ,int ) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int sscfu_getstate (int ) ;
 char* sscfu_statename (int ) ;

__attribute__((used)) static int
text_status(node_p node, struct priv *priv, char *arg, u_int len)
{
 struct sbuf sbuf;

 sbuf_new(&sbuf, arg, len, 0);

 if (priv->upper)
  sbuf_printf(&sbuf, "upper hook: %s connected to %s:%s\n",
      NG_HOOK_NAME(priv->upper),
      NG_NODE_NAME(NG_HOOK_NODE(NG_HOOK_PEER(priv->upper))),
      NG_HOOK_NAME(NG_HOOK_PEER(priv->upper)));
 else
  sbuf_printf(&sbuf, "upper hook: <not connected>\n");

 if (priv->lower)
  sbuf_printf(&sbuf, "lower hook: %s connected to %s:%s\n",
      NG_HOOK_NAME(priv->lower),
      NG_NODE_NAME(NG_HOOK_NODE(NG_HOOK_PEER(priv->lower))),
      NG_HOOK_NAME(NG_HOOK_PEER(priv->lower)));
 else
  sbuf_printf(&sbuf, "lower hook: <not connected>\n");

 sbuf_printf(&sbuf, "sscf state: %s\n",
     priv->enabled == 0 ? "<disabled>" :
     sscfu_statename(sscfu_getstate(priv->sscf)));

 sbuf_finish(&sbuf);
 return (sbuf_len(&sbuf));
}
