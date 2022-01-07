
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int high; int low; } ;
struct rejected_reply {int rj_stat; int rj_why; TYPE_1__ rj_vers; } ;
typedef int enum_t ;
typedef enum reject_stat { ____Placeholder_reject_stat } reject_stat ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef int bool_t ;
typedef int XDR ;



 int FALSE ;

 int assert (int ) ;
 int xdr_enum (int *,int *) ;
 int xdr_uint32_t (int *,int *) ;

bool_t
xdr_rejected_reply(XDR *xdrs, struct rejected_reply *rr)
{
 enum reject_stat *prj_stat;
 enum auth_stat *prj_why;

 assert(xdrs != ((void*)0));
 assert(rr != ((void*)0));

 prj_stat = &rr->rj_stat;


 if (! xdr_enum(xdrs, (enum_t *) prj_stat))
  return (FALSE);
 switch (rr->rj_stat) {

 case 128:
  if (! xdr_uint32_t(xdrs, &(rr->rj_vers.low)))
   return (FALSE);
  return (xdr_uint32_t(xdrs, &(rr->rj_vers.high)));

 case 129:
  prj_why = &rr->rj_why;
  return (xdr_enum(xdrs, (enum_t *) prj_why));
 }

 assert(0);
 return (FALSE);
}
