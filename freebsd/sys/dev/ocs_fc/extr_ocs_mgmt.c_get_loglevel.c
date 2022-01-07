
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;
typedef int ocs_t ;


 int MGMT_MODE_RW ;
 int loglevel ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;

__attribute__((used)) static void
get_loglevel(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RW, "loglevel", "%d", loglevel);

}
