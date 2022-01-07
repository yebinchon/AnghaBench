
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt {size_t sopt_valsize; scalar_t__ sopt_dir; TYPE_1__* sopt_td; } ;
struct sadb_x_policy {int dummy; } ;
struct inpcb {int * inp_sp; } ;
struct TYPE_2__ {int * td_ucred; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOPROTOOPT ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_WAITOK ;
 size_t PAGE_SIZE ;
 scalar_t__ SOPT_SET ;
 int free (void*,int ) ;
 int ipsec_get_pcbpolicy (struct inpcb*,void*,size_t*) ;
 int ipsec_set_pcbpolicy (struct inpcb*,int *,void*,size_t) ;
 void* malloc (size_t,int ,int ) ;
 int sooptcopyin (struct sockopt*,void*,size_t,size_t) ;
 int sooptcopyout (struct sockopt*,void*,size_t) ;

__attribute__((used)) static int
ipsec_control_pcbpolicy(struct inpcb *inp, struct sockopt *sopt)
{
 void *optdata;
 size_t optlen;
 int error;

 if (inp->inp_sp == ((void*)0))
  return (ENOPROTOOPT);


 optlen = sopt->sopt_valsize;
 if (optlen < sizeof(struct sadb_x_policy) || optlen > PAGE_SIZE)
  return (EINVAL);

 optdata = malloc(optlen, M_TEMP, sopt->sopt_td ? M_WAITOK: M_NOWAIT);
 if (optdata == ((void*)0))
  return (ENOBUFS);





 error = sooptcopyin(sopt, optdata, optlen, optlen);
 if (error == 0) {
  if (sopt->sopt_dir == SOPT_SET)
   error = ipsec_set_pcbpolicy(inp,
       sopt->sopt_td ? sopt->sopt_td->td_ucred: ((void*)0),
       optdata, optlen);
  else {
   error = ipsec_get_pcbpolicy(inp, optdata, &optlen);
   if (error == 0)
    error = sooptcopyout(sopt, optdata, optlen);
  }
 }
 free(optdata, M_TEMP);
 return (error);
}
