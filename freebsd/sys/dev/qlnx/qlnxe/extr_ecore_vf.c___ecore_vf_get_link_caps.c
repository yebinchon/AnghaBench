
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcp_link_capabilities {int speed_capabilities; } ;
struct ecore_bulletin_content {int capability_speed; } ;


 int OSAL_MEMSET (struct ecore_mcp_link_capabilities*,int ,int) ;

void __ecore_vf_get_link_caps(struct ecore_mcp_link_capabilities *p_link_caps,
         struct ecore_bulletin_content *p_bulletin)
{
 OSAL_MEMSET(p_link_caps, 0, sizeof(*p_link_caps));
 p_link_caps->speed_capabilities = p_bulletin->capability_speed;
}
