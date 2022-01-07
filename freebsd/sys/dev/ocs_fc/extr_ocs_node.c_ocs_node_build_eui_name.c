
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int ocs_memset (char*,int ,int ) ;
 int ocs_snprintf (char*,int ,char*,unsigned long long) ;

void
ocs_node_build_eui_name(char *buffer, uint32_t buffer_len, uint64_t eui_name)
{
 ocs_memset(buffer, 0, buffer_len);

 ocs_snprintf(buffer, buffer_len, "eui.%016llx", (unsigned long long)eui_name);
}
