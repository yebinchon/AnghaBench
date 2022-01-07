
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* del ) (TYPE_1__*,int *,int ) ;int (* close ) (TYPE_1__*) ;} ;
typedef int DBT ;
typedef TYPE_1__ DB ;


 int YP_BADDB ;
 int YP_FALSE ;
 int YP_TRUE ;
 int stub1 (TYPE_1__*,int *,int ) ;
 int stub2 (TYPE_1__*) ;

int
yp_del_record(DB *dbp, DBT *key)
{
 int rval;

 if ((rval = (dbp->del)(dbp,key,0))) {
  switch (rval) {
  case 1:
   return(YP_FALSE);
   break;
  case -1:
  default:
   (void)(dbp->close)(dbp);
   return(YP_BADDB);
   break;
  }
 }

 return(YP_TRUE);
}
