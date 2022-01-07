
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int resultproc_t ;
struct TYPE_15__ {int domain_name; void* client_name; } ;
typedef TYPE_3__ bp_whoami_res ;
struct TYPE_13__ {int ip_addr; } ;
struct TYPE_14__ {TYPE_1__ bp_address_u; int address_type; } ;
struct TYPE_16__ {TYPE_2__ client_address; } ;
typedef TYPE_4__ bp_whoami_arg ;
struct TYPE_17__ {int server_path; void* server_name; } ;
typedef TYPE_5__ bp_getfile_res ;
struct TYPE_18__ {char* client_name; char* file_id; } ;
typedef TYPE_6__ bp_getfile_arg ;
typedef int CLIENT ;


 int BOOTPARAMPROC_GETFILE ;
 int BOOTPARAMPROC_WHOAMI ;
 int BOOTPARAMPROG ;
 int BOOTPARAMVERS ;
 long INADDR_NONE ;
 int IP_ADDR_TYPE ;
 int bcopy (long*,int *,int) ;
 TYPE_5__* bootparamproc_getfile_1 (TYPE_6__*,int *) ;
 TYPE_3__* bootparamproc_whoami_1 (TYPE_4__*,int *) ;
 int broadcast ;
 void* cln ;
 int clnt_broadcast (int ,int ,int ,int ,char*,int ,char*,int ) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int dmn ;
 int eachres_getfile ;
 int eachres_whoami ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 long inet_addr (char*) ;
 int path ;
 int printf (char*) ;
 int printgetfile (TYPE_5__*) ;
 int printwhoami (TYPE_3__*) ;
 int strcmp (char*,char*) ;
 int usage () ;
 int xdr_bp_getfile_arg ;
 int xdr_bp_getfile_res ;
 int xdr_bp_whoami_arg ;
 int xdr_bp_whoami_res ;

int
main(int argc, char **argv)
{
  char *server;

  bp_whoami_arg whoami_arg;
  bp_whoami_res *whoami_res, stat_whoami_res;
  bp_getfile_arg getfile_arg;
  bp_getfile_res *getfile_res, stat_getfile_res;


  long the_inet_addr;
  CLIENT *clnt;

  stat_whoami_res.client_name = cln;
  stat_whoami_res.domain_name = dmn;

  stat_getfile_res.server_name = cln;
  stat_getfile_res.server_path = path;

  if (argc < 3)
    usage();

  server = argv[1];
  if ( ! strcmp(server , "all") ) broadcast = 1;

  if ( ! broadcast ) {
    clnt = clnt_create(server,BOOTPARAMPROG, BOOTPARAMVERS, "udp");
    if ( clnt == ((void*)0) )
      errx(1, "could not contact bootparam server on host %s", server);
  }

  switch (argc) {
  case 3:
    whoami_arg.client_address.address_type = IP_ADDR_TYPE;
    the_inet_addr = inet_addr(argv[2]);
    if ( the_inet_addr == INADDR_NONE)
      errx(2, "bogus addr %s", argv[2]);
    bcopy(&the_inet_addr,&whoami_arg.client_address.bp_address_u.ip_addr,4);

    if (! broadcast ) {
      whoami_res = bootparamproc_whoami_1(&whoami_arg, clnt);
      printf("Whoami returning:\n");
      if (printwhoami(whoami_res)) {
 errx(1, "bad answer returned from server %s", server);
      } else
 exit(0);
     } else {
       (void)clnt_broadcast(BOOTPARAMPROG, BOOTPARAMVERS,
          BOOTPARAMPROC_WHOAMI,
          (xdrproc_t)xdr_bp_whoami_arg,
          (char *)&whoami_arg,
          (xdrproc_t)xdr_bp_whoami_res,
          (char *)&stat_whoami_res,
          (resultproc_t)eachres_whoami);
       exit(0);
     }

  case 4:

    getfile_arg.client_name = argv[2];
    getfile_arg.file_id = argv[3];

    if (! broadcast ) {
      getfile_res = bootparamproc_getfile_1(&getfile_arg,clnt);
      printf("getfile returning:\n");
      if (printgetfile(getfile_res)) {
 errx(1, "bad answer returned from server %s", server);
      } else
 exit(0);
    } else {
      (void)clnt_broadcast(BOOTPARAMPROG, BOOTPARAMVERS,
          BOOTPARAMPROC_GETFILE,
          (xdrproc_t)xdr_bp_getfile_arg,
          (char *)&getfile_arg,
          (xdrproc_t)xdr_bp_getfile_res,
          (char *)&stat_getfile_res,
          (resultproc_t)eachres_getfile);
      exit(0);
    }

  default:

    usage();
  }

}
