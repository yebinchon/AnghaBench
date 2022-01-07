
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snmp_toolinfo {scalar_t__ objects; int passwd; } ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ engine_len; int engine_id; } ;
struct TYPE_4__ {scalar_t__ version; TYPE_1__ engine; int user; } ;





 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 scalar_t__ GET_PDUTYPE (struct snmp_toolinfo*) ;
 scalar_t__ ISSET_EDISCOVER (struct snmp_toolinfo*) ;
 scalar_t__ ISSET_LOCALKEY (struct snmp_toolinfo*) ;
 scalar_t__ OUTPUT_VERBOSE ;
 int SET_EDISCOVER (struct snmp_toolinfo*) ;
 scalar_t__ SNMP_CODE_OK ;
 scalar_t__ SNMP_PDU_GETBULK ;
 scalar_t__ SNMP_V1 ;
 scalar_t__ SNMP_V3 ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int program ;
 char* program_name ;
 TYPE_2__ snmp_client ;
 int snmp_close () ;
 scalar_t__ snmp_discover_engine (int ) ;
 scalar_t__ snmp_get_local_keys (int *,int ,scalar_t__) ;
 scalar_t__ snmp_import_all (struct snmp_toolinfo*) ;
 scalar_t__ snmp_object_add (struct snmp_toolinfo*,int ,char*) ;
 scalar_t__ snmp_open (int *,int *,int *,int *) ;
 int snmp_output_engine () ;
 int snmp_output_keys () ;
 scalar_t__ snmp_passwd_to_keys (int *,int ) ;
 int snmp_tool_freeall (struct snmp_toolinfo*) ;
 int snmpset_parse_oid ;
 int snmptool_get (struct snmp_toolinfo*) ;
 scalar_t__ snmptool_init (struct snmp_toolinfo*) ;
 int snmptool_parse_options (struct snmp_toolinfo*,int,char**) ;
 int snmptool_set (struct snmp_toolinfo*) ;
 int snmptool_walk (struct snmp_toolinfo*) ;
 int snmptools_parse_oid ;
 int snmpwalk_add_default ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int usage () ;
 int warn (char*) ;

int
main(int argc, char ** argv)
{
 struct snmp_toolinfo snmptoolctx;
 int32_t oid_cnt, last_oid, opt_num;
 int rc = 0;


 if (*argv == ((void*)0))
  program_name = "snmptool";
 else {
  program_name = strrchr(*argv, '/');
  if (program_name != ((void*)0))
   program_name++;
  else
   program_name = *argv;
 }

 if (program_name == ((void*)0)) {
  fprintf(stderr, "Error: No program name?\n");
  exit (1);
 } else if (strcmp(program_name, "bsnmpget") == 0)
  program = 130;
 else if (strcmp(program_name, "bsnmpwalk") == 0)
  program = 128;
 else if (strcmp(program_name, "bsnmpset") == 0)
  program = 129;
 else {
  fprintf(stderr, "Unknown snmp tool name '%s'.\n", program_name);
  exit (1);
 }


 if (snmptool_init(&snmptoolctx) < 0)
  exit (1);

 if ((opt_num = snmptool_parse_options(&snmptoolctx, argc, argv)) < 0) {
  snmp_tool_freeall(&snmptoolctx);

  if (opt_num == -2)
   exit(0);
  else
   exit(1);
 }

 oid_cnt = argc - opt_num - 1;
 if (oid_cnt == 0) {
  switch (program) {
  case 130:
   if (!ISSET_EDISCOVER(&snmptoolctx) &&
       !ISSET_LOCALKEY(&snmptoolctx)) {
    fprintf(stderr, "No OID given.\n");
    usage();
    snmp_tool_freeall(&snmptoolctx);
    exit(1);
   }
   break;

  case 128:
   if (snmp_object_add(&snmptoolctx, snmpwalk_add_default,
       ((void*)0)) < 0) {
    fprintf(stderr,
        "Error setting default subtree.\n");
    snmp_tool_freeall(&snmptoolctx);
    exit(1);
   }
   break;

  case 129:
   fprintf(stderr, "No OID given.\n");
   usage();
   snmp_tool_freeall(&snmptoolctx);
   exit(1);
  }
 }

 if (snmp_import_all(&snmptoolctx) < 0) {
  snmp_tool_freeall(&snmptoolctx);
  exit(1);
 }


 if (program == 130 && snmp_client.version == SNMP_V1 &&
     GET_PDUTYPE(&snmptoolctx) == SNMP_PDU_GETBULK) {
  fprintf(stderr, "Cannot send GETBULK PDU with SNMPv1.\n");
  snmp_tool_freeall(&snmptoolctx);
  exit(1);
 }

 for (last_oid = argc - 1; oid_cnt > 0; last_oid--, oid_cnt--) {
  if ((snmp_object_add(&snmptoolctx, (program == 129) ?
      snmpset_parse_oid : snmptools_parse_oid,
      argv[last_oid])) < 0) {
   fprintf(stderr, "Error parsing OID string '%s'.\n",
       argv[last_oid]);
   snmp_tool_freeall(&snmptoolctx);
   exit(1);
  }
 }

 if (snmp_open(((void*)0), ((void*)0), ((void*)0), ((void*)0))) {
  warn("Failed to open snmp session");
  snmp_tool_freeall(&snmptoolctx);
  exit(1);
 }

 if (snmp_client.version == SNMP_V3 && snmp_client.engine.engine_len == 0)
  SET_EDISCOVER(&snmptoolctx);

 if (ISSET_EDISCOVER(&snmptoolctx) &&
     snmp_discover_engine(snmptoolctx.passwd) < 0) {
  warn("Unknown SNMP Engine ID");
  rc = 1;
  goto cleanup;
 }

 if (GET_OUTPUT(&snmptoolctx) == OUTPUT_VERBOSE ||
     ISSET_EDISCOVER(&snmptoolctx))
  snmp_output_engine();

 if (snmp_client.version == SNMP_V3 && ISSET_LOCALKEY(&snmptoolctx) &&
     !ISSET_EDISCOVER(&snmptoolctx)) {
  if (snmp_passwd_to_keys(&snmp_client.user,
      snmptoolctx.passwd) != SNMP_CODE_OK ||
      snmp_get_local_keys(&snmp_client.user,
      snmp_client.engine.engine_id,
      snmp_client.engine.engine_len) != SNMP_CODE_OK) {
       warn("Failed to get keys");
   rc = 1;
   goto cleanup;
  }
 }

 if (GET_OUTPUT(&snmptoolctx) == OUTPUT_VERBOSE ||
     ISSET_EDISCOVER(&snmptoolctx))
  snmp_output_keys();

 if (ISSET_EDISCOVER(&snmptoolctx) && snmptoolctx.objects == 0)
  goto cleanup;

 switch (program) {
 case 130:
  rc = snmptool_get(&snmptoolctx);
  break;
 case 128:
  rc = snmptool_walk(&snmptoolctx);
  break;
 case 129:
  rc = snmptool_set(&snmptoolctx);
  break;
 }


cleanup:
 snmp_tool_freeall(&snmptoolctx);
 snmp_close();

 exit(rc);
}
