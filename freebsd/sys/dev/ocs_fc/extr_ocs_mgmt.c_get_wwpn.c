
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ocs_textbuf_t ;
struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RD ;
 int OCS_HW_WWN_PORT ;
 scalar_t__ ocs_htobe64 (int ) ;
 int * ocs_hw_get_ptr (int *,int ) ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,unsigned long long) ;

__attribute__((used)) static void
get_wwpn(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 uint64_t *wwpn;

 wwpn = ocs_hw_get_ptr(&ocs->hw, OCS_HW_WWN_PORT);

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "wwpn", "0x%llx", (unsigned long long)ocs_htobe64(*wwpn));
}
