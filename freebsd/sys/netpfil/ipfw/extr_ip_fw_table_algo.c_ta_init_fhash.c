
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t u_int ;
struct table_info {size_t data; int lookup; struct fhashentry4* xstate; int * state; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_4__ {int af; int proto; int dport; int sport; } ;
struct fhashentry6 {TYPE_2__ e; int dip6; int sip6; } ;
struct TYPE_3__ {int af; int proto; int dport; int sport; } ;
struct fhashentry4 {TYPE_1__ e; int dip; int sip; } ;
struct fhashbhead {int dummy; } ;
struct fhash_cfg {int size; struct fhashentry4 fe4; int * head; struct fhashentry6 fe6; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IPFW_TFFLAG_DSTIP ;
 int IPFW_TFFLAG_DSTPORT ;
 int IPFW_TFFLAG_PROTO ;
 int IPFW_TFFLAG_SRCIP ;
 int IPFW_TFFLAG_SRCPORT ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 void* malloc (int,int ,int) ;
 int memset (int *,int,int) ;
 int ta_lookup_fhash ;

__attribute__((used)) static int
ta_init_fhash(struct ip_fw_chain *ch, void **ta_state, struct table_info *ti,
    char *data, uint8_t tflags)
{
 struct fhash_cfg *cfg;
 struct fhashentry4 *fe4;
 struct fhashentry6 *fe6;
 u_int i;

 cfg = malloc(sizeof(struct fhash_cfg), M_IPFW, M_WAITOK | M_ZERO);

 cfg->size = 512;

 cfg->head = malloc(sizeof(struct fhashbhead) * cfg->size, M_IPFW,
     M_WAITOK | M_ZERO);
 for (i = 0; i < cfg->size; i++)
  SLIST_INIT(&cfg->head[i]);


 fe4 = &cfg->fe4;
 fe6 = &cfg->fe6;
 if (tflags & IPFW_TFFLAG_SRCIP) {
  memset(&fe4->sip, 0xFF, sizeof(fe4->sip));
  memset(&fe6->sip6, 0xFF, sizeof(fe6->sip6));
 }
 if (tflags & IPFW_TFFLAG_DSTIP) {
  memset(&fe4->dip, 0xFF, sizeof(fe4->dip));
  memset(&fe6->dip6, 0xFF, sizeof(fe6->dip6));
 }
 if (tflags & IPFW_TFFLAG_SRCPORT) {
  memset(&fe4->e.sport, 0xFF, sizeof(fe4->e.sport));
  memset(&fe6->e.sport, 0xFF, sizeof(fe6->e.sport));
 }
 if (tflags & IPFW_TFFLAG_DSTPORT) {
  memset(&fe4->e.dport, 0xFF, sizeof(fe4->e.dport));
  memset(&fe6->e.dport, 0xFF, sizeof(fe6->e.dport));
 }
 if (tflags & IPFW_TFFLAG_PROTO) {
  memset(&fe4->e.proto, 0xFF, sizeof(fe4->e.proto));
  memset(&fe6->e.proto, 0xFF, sizeof(fe6->e.proto));
 }

 fe4->e.af = AF_INET;
 fe6->e.af = AF_INET6;

 *ta_state = cfg;
 ti->state = cfg->head;
 ti->xstate = &cfg->fe4;
 ti->data = cfg->size;
 ti->lookup = ta_lookup_fhash;

 return (0);
}
