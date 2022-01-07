
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt {scalar_t__ sopt_dir; int sopt_name; int sopt_valsize; TYPE_1__* sopt_td; } ;
struct dn_id {int dummy; } ;
struct TYPE_2__ {int td_ucred; } ;


 int D (char*,int) ;
 int EINVAL ;





 int M_TEMP ;
 int M_WAITOK ;
 int PRIV_NETINET_DUMMYNET ;
 scalar_t__ SOPT_GET ;
 scalar_t__ SOPT_SET ;
 int do_config (void*,int) ;
 int dummynet_get (struct sockopt*,int *) ;
 int free (void*,int ) ;
 int ip_dummynet_compat (struct sockopt*) ;
 void* malloc (int,int ,int ) ;
 int priv_check (TYPE_1__*,int ) ;
 int securelevel_ge (int ,int) ;
 int sooptcopyin (struct sockopt*,void*,int,int) ;

__attribute__((used)) static int
ip_dn_ctl(struct sockopt *sopt)
{
 void *p = ((void*)0);
 int error, l;

 error = priv_check(sopt->sopt_td, PRIV_NETINET_DUMMYNET);
 if (error)
  return (error);


 if (sopt->sopt_dir == SOPT_SET) {
  error = securelevel_ge(sopt->sopt_td->td_ucred, 3);
  if (error)
   return (error);
 }

 switch (sopt->sopt_name) {
 default :
  D("dummynet: unknown option %d", sopt->sopt_name);
  error = EINVAL;
  break;

 case 129:
 case 131:
 case 130:
 case 128:
  D("dummynet: compat option %d", sopt->sopt_name);
  error = ip_dummynet_compat(sopt);
  break;

 case 132 :
  if (sopt->sopt_dir == SOPT_GET) {
   error = dummynet_get(sopt, ((void*)0));
   break;
  }
  l = sopt->sopt_valsize;
  if (l < sizeof(struct dn_id) || l > 12000) {
   D("argument len %d invalid", l);
   break;
  }
  p = malloc(l, M_TEMP, M_WAITOK);
  error = sooptcopyin(sopt, p, l, l);
  if (error)
   break ;
  error = do_config(p, l);
  break;
 }

 if (p != ((void*)0))
  free(p, M_TEMP);

 return error ;
}
