
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;





 int EOF ;
 int getopt (int,char**,char const*) ;
 int optarg ;
 int parse_authentication (struct snmp_toolinfo*,int ) ;
 int parse_buflen (int ) ;
 int parse_context (struct snmp_toolinfo*,int ) ;
 int parse_debug () ;
 int parse_discovery (struct snmp_toolinfo*) ;
 int parse_errors (struct snmp_toolinfo*) ;
 int parse_file (struct snmp_toolinfo*,int ) ;
 int parse_include (struct snmp_toolinfo*,int ) ;
 int parse_local_key (struct snmp_toolinfo*) ;
 int parse_local_path (int ) ;
 int parse_max_repetitions (struct snmp_toolinfo*,int ) ;
 int parse_non_repeaters (struct snmp_toolinfo*,int ) ;
 int parse_num_oids (struct snmp_toolinfo*) ;
 int parse_output (struct snmp_toolinfo*,int ) ;
 int parse_pdu_type (struct snmp_toolinfo*,int ) ;
 int parse_privacy (struct snmp_toolinfo*,int ) ;
 int parse_retry (int ) ;
 int parse_server (int ) ;
 int parse_skip_access (struct snmp_toolinfo*) ;
 int parse_timeout (int ) ;
 int parse_user_security (struct snmp_toolinfo*,int ) ;
 int parse_version (int ) ;
 int program ;
 int usage () ;

__attribute__((used)) static int32_t
snmptool_parse_options(struct snmp_toolinfo *snmptoolctx, int argc, char **argv)
{
 int32_t count, optnum = 0;
 int ch;
 const char *opts;

 switch (program) {
  case 128:
   opts = "dhnKA:b:C:I:i:l:M:N:o:P:p:r:s:t:U:v:";
   break;
  case 130:
   opts = "aDdehnKA:b:C:I:i:l:M:N:o:P:p:r:s:t:U:v:";
   break;
  case 129:
   opts = "adehnKA:b:C:I:i:l:o:P:r:s:t:U:v:";
   break;
  default:
   return (-1);
 }

 while ((ch = getopt(argc, argv, opts)) != EOF) {
  switch (ch) {
  case 'A':
   count = parse_authentication(snmptoolctx, optarg);
   break;
  case 'a':
   count = parse_skip_access(snmptoolctx);
   break;
  case 'b':
   count = parse_buflen(optarg);
   break;
  case 'D':
   count = parse_discovery(snmptoolctx);
   break;
  case 'd':
   count = parse_debug();
   break;
  case 'e':
   count = parse_errors(snmptoolctx);
   break;
  case 'h':
   usage();
   return (-2);
  case 'C':
   count = parse_context(snmptoolctx, optarg);
   break;
  case 'I':
   count = parse_include(snmptoolctx, optarg);
   break;
  case 'i':
   count = parse_file(snmptoolctx, optarg);
   break;
  case 'K':
   count = parse_local_key(snmptoolctx);
   break;
  case 'l':
   count = parse_local_path(optarg);
   break;
  case 'M':
   count = parse_max_repetitions(snmptoolctx, optarg);
   break;
  case 'N':
   count = parse_non_repeaters(snmptoolctx, optarg);
   break;
  case 'n':
   count = parse_num_oids(snmptoolctx);
   break;
  case 'o':
   count = parse_output(snmptoolctx, optarg);
   break;
  case 'P':
   count = parse_privacy(snmptoolctx, optarg);
   break;
  case 'p':
   count = parse_pdu_type(snmptoolctx, optarg);
   break;
  case 'r':
   count = parse_retry(optarg);
   break;
  case 's':
   count = parse_server(optarg);
   break;
  case 't':
   count = parse_timeout(optarg);
   break;
  case 'U':
   count = parse_user_security(snmptoolctx, optarg);
   break;
  case 'v':
   count = parse_version(optarg);
   break;
  case '?':
  default:
   usage();
   return (-1);
  }
  if (count < 0)
   return (-1);
     optnum += count;
 }

 return (optnum);
}
