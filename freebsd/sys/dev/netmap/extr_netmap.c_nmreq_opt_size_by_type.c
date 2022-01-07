
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int uint32_t ;
struct nmreq_option {int dummy; } ;
struct nmreq_opt_sync_kloop_mode {int dummy; } ;
struct nmreq_opt_extmem {int dummy; } ;
struct nmreq_opt_csb {int dummy; } ;



 int NETMAP_REQ_OPT_DEBUG ;




__attribute__((used)) static size_t
nmreq_opt_size_by_type(uint32_t nro_reqtype, uint64_t nro_size)
{
 size_t rv = sizeof(struct nmreq_option);




 switch (nro_reqtype) {





 case 129:
  if (nro_size >= rv)
   rv = nro_size;
  break;
 case 131:
  rv = sizeof(struct nmreq_opt_csb);
  break;
 case 128:
  rv = sizeof(struct nmreq_opt_sync_kloop_mode);
  break;
 }

 return rv - sizeof(struct nmreq_option);
}
