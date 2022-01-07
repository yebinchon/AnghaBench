
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int yp_buf_val; int yp_buf_len; } ;
struct ypdelete_args {TYPE_2__ key; int mapname; } ;
struct svc_req {scalar_t__ rq_clntcred; int rq_xprt; } ;
struct TYPE_3__ {char* name; } ;
struct authdes_cred {TYPE_1__ adc_fullname; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;


 int AUTH_OK ;
 int YPOP_DELETE ;
 int localupdate (char*,char*,int ,int ,int ,int ,int *) ;
 int svcerr_auth (int ,int) ;
 int yp_checkauth (struct svc_req*) ;
 int ypmap_update (char*,int ,int ,int ,int ,int ,int *) ;

unsigned int *
ypu_delete_1_svc(struct ypdelete_args *args, struct svc_req *svcreq)
{
 struct authdes_cred *des_cred;
 static int res;
 char *netname;
 enum auth_stat astat;

 res = 0;

 astat = yp_checkauth(svcreq);

 if (astat != AUTH_OK) {
  svcerr_auth(svcreq->rq_xprt, astat);
  return(&res);
 }

 des_cred = (struct authdes_cred *) svcreq->rq_clntcred;
 netname = des_cred->adc_fullname.name;

 res = localupdate(netname, "/etc/publickey", YPOP_DELETE,
  args->key.yp_buf_len, args->key.yp_buf_val,
  0, ((void*)0));

 if (res)
  return (&res);

 res = ypmap_update(netname, args->mapname, YPOP_DELETE,
  args->key.yp_buf_len, args->key.yp_buf_val,
  0, ((void*)0));

 return (&res);
}
