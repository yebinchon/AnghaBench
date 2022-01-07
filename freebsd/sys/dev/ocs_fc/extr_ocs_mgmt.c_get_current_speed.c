
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_textbuf_t ;
struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RD ;
 int OCS_HW_LINK_SPEED ;
 int ocs_hw_get (int *,int ,int *) ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;

__attribute__((used)) static void
get_current_speed(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 uint32_t value;

 ocs_hw_get(&(ocs->hw), OCS_HW_LINK_SPEED, &value);

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "current_speed", "%d", value);
}
