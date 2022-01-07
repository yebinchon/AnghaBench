
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sbuf {int dummy; } ;
struct priv {scalar_t__ uni; int * upper; int * lower; } ;
typedef int node_p ;


 int NG_HOOK_NAME (int ) ;
 int NG_HOOK_NODE (int ) ;
 int NG_HOOK_PEER (int *) ;
 int NG_NODE_NAME (int ) ;
 scalar_t__ UNI_MAXFACILITY ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,scalar_t__,int ) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int uni_facname (scalar_t__) ;
 scalar_t__ uni_get_debug (scalar_t__,scalar_t__) ;
 int uni_status (scalar_t__,struct sbuf*) ;

__attribute__((used)) static int
text_status(node_p node, struct priv *priv, char *buf, u_int len)
{
 struct sbuf sbuf;
 u_int f;

 sbuf_new(&sbuf, buf, len, 0);

 if (priv->lower != ((void*)0))
  sbuf_printf(&sbuf, "lower hook: connected to %s:%s\n",
      NG_NODE_NAME(NG_HOOK_NODE(NG_HOOK_PEER(priv->lower))),
      NG_HOOK_NAME(NG_HOOK_PEER(priv->lower)));
 else
  sbuf_printf(&sbuf, "lower hook: <not connected>\n");

 if (priv->upper != ((void*)0))
  sbuf_printf(&sbuf, "upper hook: connected to %s:%s\n",
      NG_NODE_NAME(NG_HOOK_NODE(NG_HOOK_PEER(priv->upper))),
      NG_HOOK_NAME(NG_HOOK_PEER(priv->upper)));
 else
  sbuf_printf(&sbuf, "upper hook: <not connected>\n");

 sbuf_printf(&sbuf, "debugging:");
 for (f = 0; f < UNI_MAXFACILITY; f++)
  if (uni_get_debug(priv->uni, f) != 0)
   sbuf_printf(&sbuf, " %s=%u", uni_facname(f),
       uni_get_debug(priv->uni, f));
 sbuf_printf(&sbuf, "\n");

 if (priv->uni)
  uni_status(priv->uni, &sbuf);

 sbuf_finish(&sbuf);
 return (sbuf_len(&sbuf));
}
