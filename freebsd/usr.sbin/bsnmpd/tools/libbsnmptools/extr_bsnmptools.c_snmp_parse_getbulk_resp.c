
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_pdu {scalar_t__ error_status; scalar_t__ error_index; TYPE_1__* bindings; scalar_t__ nbindings; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ syntax; int var; } ;


 scalar_t__ SNMP_SYNTAX_ENDOFMIBVIEW ;
 scalar_t__ asn_is_suboid (int *,int *) ;
 int warnx (char*) ;

int32_t
snmp_parse_getbulk_resp(struct snmp_pdu *resp, struct snmp_pdu *req)
{
 int32_t N, R, M, r;

 if (req->error_status > (int32_t) resp->nbindings) {
  warnx("Bad number of bindings in response");
  return (-1);
 }

 for (N = 0; N < req->error_status; N++) {
  if (asn_is_suboid(&req->bindings[N].var,
      &resp->bindings[N].var) == 0)
   return (0);
  if (resp->bindings[N].syntax == SNMP_SYNTAX_ENDOFMIBVIEW)
   return (0);
 }

 for (R = N , r = N; R < (int32_t) req->nbindings; R++) {
  for (M = 0; M < req->error_index && (r + M) <
      (int32_t) resp->nbindings; M++) {
   if (asn_is_suboid(&req->bindings[R].var,
       &resp->bindings[r + M].var) == 0)
    return (0);

   if (resp->bindings[r + M].syntax ==
       SNMP_SYNTAX_ENDOFMIBVIEW) {
    M++;
    break;
   }
  }
  r += M;
 }

 return (0);
}
