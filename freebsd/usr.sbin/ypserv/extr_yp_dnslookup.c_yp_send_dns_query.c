
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int buf ;
struct TYPE_4__ {int nscount; int * nsaddr_list; } ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ HEADER ;


 int C_IN ;
 int MAXPACKET ;
 int QUERY ;
 TYPE_2__ _res ;
 int bzero (char*,int) ;
 unsigned long ntohs (int ) ;
 int res_mkquery (int ,char*,int ,int,int *,int ,int *,char*,int) ;
 int resfd ;
 int sendto (int ,char*,int,int ,struct sockaddr*,int) ;
 int yp_error (char*,...) ;

__attribute__((used)) static unsigned long
yp_send_dns_query(char *name, int type)
{
 char buf[MAXPACKET];
 int n;
 HEADER *hptr;
 int ns;
 int rval;
 unsigned long id;

 bzero(buf, sizeof(buf));

 n = res_mkquery(QUERY,name,C_IN,type,((void*)0),0,((void*)0),buf,sizeof(buf));

 if (n <= 0) {
  yp_error("res_mkquery failed for %s type %d", name, type);
  return(0);
 }

 hptr = (HEADER *)&buf;
 id = ntohs(hptr->id);

 for (ns = 0; ns < _res.nscount; ns++) {
  rval = sendto(resfd, buf, n, 0,
   (struct sockaddr *)&_res.nsaddr_list[ns],
    sizeof(struct sockaddr));
  if (rval == -1) {
   yp_error("sendto failed");
   return(0);
  }
 }

 return(id);
}
