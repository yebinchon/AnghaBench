
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int yplastbuf ;
typedef int intmax_t ;
struct TYPE_15__ {int (* close ) (TYPE_2__*) ;} ;
struct TYPE_14__ {char* data; unsigned int size; int member_1; int * member_0; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int ERR_ACCESS ;
 int ERR_DBASE ;
 int ERR_KEY ;
 int O_RDWR ;




 int YP_TRUE ;
 int snprintf (char*,int,char*,int ) ;
 char* strchr (char*,char) ;
 void* strlen (char*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 scalar_t__ time (int *) ;
 int yp_del_record (TYPE_2__*,TYPE_1__*) ;
 int yp_domake (char*,char*) ;
 int yp_error (char*,...) ;
 int yp_get_record (char*,char*,TYPE_1__*,TYPE_1__*,int ) ;
 TYPE_2__* yp_open_db_rw (char*,char*,int ) ;
 int yp_put_record (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;

int
ypmap_update(char *netname, char *map, unsigned int op, unsigned int keylen,
    char *keyval, unsigned int datlen, char *datval)
{
 DB *dbp;
 DBT key = { ((void*)0), 0 }, data = { ((void*)0), 0 };
 char *yp_last = "YP_LAST_MODIFIED";
 char yplastbuf[32];
 char *domptr;
 int rval = 0;

 if ((domptr = strchr(netname, '@')) == ((void*)0))
  return(ERR_ACCESS);
 domptr++;


 dbp = yp_open_db_rw(domptr, map, O_RDWR);
 if (dbp == ((void*)0))
  return(ERR_DBASE);

 key.data = keyval;
 key.size = keylen;
 data.data = datval;
 data.size = datlen;

 switch (op) {
 case 130:
  rval = yp_del_record(dbp, &key);
  if (rval == YP_TRUE)
   rval = 0;
  break;
 case 129:
  rval = yp_put_record(dbp, &key, &data, 0);
  if (rval == YP_TRUE)
   rval = 0;
  break;
 case 128:
  rval = yp_put_record(dbp, &key, &data, 1);
  if (rval == YP_TRUE)
   rval = 0;
  break;
 case 131:
  if (yp_get_record(domptr, map, &key, &data, 0) != YP_TRUE) {
   rval = ERR_KEY;
   break;
  }
  rval = yp_put_record(dbp, &key, &data, 1);
  if (rval == YP_TRUE)
   rval = 0;
  break;
 default:
  yp_error("unknown update command: (%d)", op);
 }

 if (rval) {
  (void)(dbp->close)(dbp);
  return(rval);
 }

 snprintf(yplastbuf, sizeof(yplastbuf), "%jd", (intmax_t)time(((void*)0)));
 key.data = yp_last;
 key.size = strlen(yp_last);
 data.data = (char *)&yplastbuf;
 data.size = strlen(yplastbuf);
 if (yp_put_record(dbp, &key, &data, 1) != YP_TRUE) {
  yp_error("failed to update timestamp in %s/%s", domptr, map);
  (void)(dbp->close)(dbp);
  return(ERR_DBASE);
 }

 (void)(dbp->close)(dbp);
 return(yp_domake(map, domptr));
}
