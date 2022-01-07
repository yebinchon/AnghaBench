
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t engine_len; int* engine_id; int engine_boots; int engine_time; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;


 int SNMP_ENGINE_ID_SIZ ;
 int fprintf (int ,char*,...) ;
 TYPE_2__ snmp_client ;
 int sprintf (char*,char*,int) ;
 int stdout ;

void
snmp_output_engine(void)
{
 uint32_t i;
 char *cptr, engine[2 * SNMP_ENGINE_ID_SIZ + 2];

 cptr = engine;
 for (i = 0; i < snmp_client.engine.engine_len; i++)
  cptr += sprintf(cptr, "%.2x", snmp_client.engine.engine_id[i]);
 *cptr++ = '\0';

 fprintf(stdout, "Engine ID 0x%s\n", engine);
 fprintf(stdout, "Boots : %u\t\tTime : %d\n",
     snmp_client.engine.engine_boots,
     snmp_client.engine.engine_time);
}
