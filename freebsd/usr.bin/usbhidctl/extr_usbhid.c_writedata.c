
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int report_ID; int kind; } ;
struct variable {int val; TYPE_1__ h; struct variable* next; } ;
typedef int report_desc_t ;
typedef enum hid_kind { ____Placeholder_hid_kind } hid_kind ;


 int free (int*) ;
 int hid_feature ;
 scalar_t__ hid_get_report (int,int,int*,int) ;
 int hid_input ;
 int hid_output ;
 int hid_report_size (int ,int,int) ;
 int hid_set_data (int*,TYPE_1__*,int ) ;
 int hid_set_report (int,int,int*,int) ;
 int* malloc (int) ;
 int memset (int*,int ,int) ;
 int printf (char*,...) ;
 struct variable* vars ;
 scalar_t__ verbose ;
 int warn (char*,int) ;
 int zflag ;

__attribute__((used)) static void
writedata(int f, report_desc_t rd)
{
 struct variable *var;
 int dlen, i, r, rid;
 u_char *dbuf;
 enum hid_kind kind;

 kind = 0;
 rid = 0;
 for (kind = 0; kind < 3; kind ++) {
     for (rid = 0; rid < 256; rid ++) {
  for (var = vars; var; var = var->next) {
   if (rid == var->h.report_ID && kind == var->h.kind)
    break;
  }
  if (var == ((void*)0))
   continue;
  dlen = hid_report_size(rd, kind, rid);
  if (dlen <= 0)
   continue;
  dbuf = malloc(dlen);
  memset(dbuf, 0, dlen);
  dbuf[0] = rid;
  if (!zflag && hid_get_report(f, kind, dbuf, dlen) == 0) {
   if (verbose) {
    printf("Got %s report %d (%d bytes):",
        kind == hid_input ? "input" :
        kind == hid_output ? "output" : "feature",
        rid, dlen);
    for (i = 0; i < dlen; i++)
     printf(" %02x", dbuf[i]);
    printf("\n");
   }
  } else if (!zflag) {
   warn("hid_get_report(rid %d)", rid);
   if (verbose) {
    printf("Can't get %s report %d (%d bytes). "
        "Will be initialized with zeros.\n",
        kind == hid_input ? "input" :
        kind == hid_output ? "output" : "feature",
        rid, dlen);
   }
  }
  for (var = vars; var; var = var->next) {
   if (rid != var->h.report_ID || kind != var->h.kind)
    continue;
   hid_set_data(dbuf, &var->h, var->val);
  }
  if (verbose) {
   printf("Setting %s report %d (%d bytes):",
       kind == hid_output ? "output" :
       kind == hid_feature ? "feature" : "input",
       rid, dlen);
   for (i = 0; i < dlen; i++)
    printf(" %02x", dbuf[i]);
   printf("\n");
  }
  r = hid_set_report(f, kind, dbuf, dlen);
  if (r != 0)
   warn("hid_set_report(rid %d)", rid);
  free(dbuf);
     }
 }
}
