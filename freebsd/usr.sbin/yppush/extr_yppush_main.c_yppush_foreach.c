
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YP_TRUE ;
 int asprintf (char**,char*,int,char*) ;
 int free (char*) ;
 scalar_t__ skip_master ;
 scalar_t__ strcasecmp (char*,int ) ;
 int yp_errno ;
 scalar_t__ yp_push (char*,int ,int ) ;
 scalar_t__ yppush_jobs ;
 int yppush_mapname ;
 int yppush_master ;
 scalar_t__ yppush_running_jobs ;
 scalar_t__ yppush_svc_run (int ) ;
 int yppush_timeout ;
 int yppush_transid ;

__attribute__((used)) static int
yppush_foreach(int status, char *key, int keylen, char *val, int vallen,
    char *data)
{
 char *server;

 if (status != YP_TRUE)
  return (status);

 asprintf(&server, "%.*s", vallen, val);






 if (server == ((void*)0))
  return (0);

 if (skip_master && strcasecmp(server, yppush_master) == 0) {
  free(server);
  return (0);
 }






 while (yppush_running_jobs >= yppush_jobs && (yppush_svc_run (yppush_timeout) > 0))
  ;


 if (yp_push(server, yppush_mapname, yppush_transid)) {
  free(server);
  return(yp_errno);
 }


 yppush_running_jobs++;
 yppush_transid++;
 free(server);
 return (0);
}
