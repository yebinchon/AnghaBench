
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int var; int strlen; struct snmp_index_entry* string; } ;
struct snmp_index_entry {struct snmp_index_entry* string; int index_list; int var; int strlen; } ;
struct enum_pairs {int dummy; } ;
typedef int int32_t ;
typedef enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {int lno; } ;


 int ENTRY_INDEX ;
 int LOG_ERR ;
 int SNMP_INDEXES_MAX ;
 int STAILQ_INIT (int *) ;
 int TOK_BITS ;
 int TOK_DEFTYPE ;
 int TOK_ENUM ;
 int TOK_STR ;
 int TOK_TYPE ;
 int asn_append_oid (int *,int *) ;
 struct snmp_index_entry* calloc (int,int) ;
 int enum_pairs_free (struct enum_pairs*) ;
 int errno ;
 int free (struct snmp_index_entry*) ;
 int gettoken (struct snmp_toolinfo*) ;
 TYPE_1__* input ;
 int parse_type (struct snmp_toolinfo*,int*,int*,struct enum_pairs**) ;
 int snmp_import_update_table (int ,struct snmp_index_entry*) ;
 int snmp_index_listfree (int *) ;
 scalar_t__ snmp_syntax_insert (int *,struct enum_pairs*,int,int) ;
 int snmp_table_insert (struct snmp_toolinfo*,struct snmp_index_entry*) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int32_t
snmp_import_table(struct snmp_toolinfo *snmptoolctx, struct snmp_oid2str *obj)
{
 int32_t i, tok;
 enum snmp_tc tc;
 struct snmp_index_entry *entry;

 if ((entry = calloc(1, sizeof(struct snmp_index_entry))) == ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
  return (-1);
 }

 STAILQ_INIT(&(entry->index_list));

 for (i = 0, tok = gettoken(snmptoolctx); i < SNMP_INDEXES_MAX; i++) {
  int32_t syntax;
  struct enum_pairs *enums = ((void*)0);

  if (tok != TOK_TYPE && tok != TOK_DEFTYPE && tok != TOK_ENUM &&
      tok != TOK_BITS)
   break;

  if ((syntax = parse_type(snmptoolctx, &tok, &tc, &enums)) < 0) {
   enum_pairs_free(enums);
   snmp_index_listfree(&(entry->index_list));
   free(entry);
   return (-1);
  }

  if (snmp_syntax_insert(&(entry->index_list), enums, syntax,
      tc) < 0) {
   snmp_index_listfree(&(entry->index_list));
   enum_pairs_free(enums);
   free(entry);
   return (-1);
  }
 }

 if (i == 0 || i > SNMP_INDEXES_MAX) {
  warnx("Bad number of indexes at line %d", input->lno);
  snmp_index_listfree(&(entry->index_list));
  free(entry);
  return (-1);
 }

 if (tok != TOK_STR) {
  warnx("String expected after indexes at line %d", input->lno);
  snmp_index_listfree(&(entry->index_list));
  free(entry);
  return (-1);
 }

 entry->string = obj->string;
 entry->strlen = obj->strlen;
 asn_append_oid(&(entry->var), &(obj->var));

 if ((i = snmp_table_insert(snmptoolctx, entry)) < 0) {
  snmp_index_listfree(&(entry->index_list));
  free(entry);
  return (-1);
 } else if (i == 0) {

  free(entry->string);
  free(entry);
  return (0);
 }

 (void) snmp_import_update_table(ENTRY_INDEX, entry);

 return (1);
}
