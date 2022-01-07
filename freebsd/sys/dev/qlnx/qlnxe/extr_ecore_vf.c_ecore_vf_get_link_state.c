
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_mcp_link_state {int dummy; } ;
struct ecore_hwfn {TYPE_1__* vf_iov_info; } ;
struct TYPE_2__ {int bulletin_shadow; } ;


 int __ecore_vf_get_link_state (struct ecore_mcp_link_state*,int *) ;

void ecore_vf_get_link_state(struct ecore_hwfn *p_hwfn,
        struct ecore_mcp_link_state *link)
{
 __ecore_vf_get_link_state(link,
      &(p_hwfn->vf_iov_info->bulletin_shadow));
}
