
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int * iffam_p ;
typedef int * hook_p ;
struct TYPE_4__ {int * gif; } ;


 int EISCONN ;
 int EPFNOSUPPORT ;
 int NG_GIF_DEMUX_HOOK_GIF ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ** get_hook_from_iffam (TYPE_1__*,int *) ;
 int * get_iffam_from_name (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
ng_gif_demux_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 iffam_p iffam;
 hook_p *hookptr;

 if (strcmp(NG_GIF_DEMUX_HOOK_GIF, name) == 0)
  hookptr = &priv->gif;
 else {
  iffam = get_iffam_from_name(name);
  if (iffam == ((void*)0))
   return (EPFNOSUPPORT);
  hookptr = get_hook_from_iffam(NG_NODE_PRIVATE(node), iffam);
 }
 if (*hookptr != ((void*)0))
  return (EISCONN);
 *hookptr = hook;
 return (0);
}
