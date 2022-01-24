#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  resultproc_t ;
struct TYPE_15__ {int /*<<< orphan*/  domain_name; void* client_name; } ;
typedef  TYPE_3__ bp_whoami_res ;
struct TYPE_13__ {int /*<<< orphan*/  ip_addr; } ;
struct TYPE_14__ {TYPE_1__ bp_address_u; int /*<<< orphan*/  address_type; } ;
struct TYPE_16__ {TYPE_2__ client_address; } ;
typedef  TYPE_4__ bp_whoami_arg ;
struct TYPE_17__ {int /*<<< orphan*/  server_path; void* server_name; } ;
typedef  TYPE_5__ bp_getfile_res ;
struct TYPE_18__ {char* client_name; char* file_id; } ;
typedef  TYPE_6__ bp_getfile_arg ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTPARAMPROC_GETFILE ; 
 int /*<<< orphan*/  BOOTPARAMPROC_WHOAMI ; 
 int /*<<< orphan*/  BOOTPARAMPROG ; 
 int /*<<< orphan*/  BOOTPARAMVERS ; 
 long INADDR_NONE ; 
 int /*<<< orphan*/  IP_ADDR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (long*,int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int broadcast ; 
 void* cln ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dmn ; 
 int /*<<< orphan*/  eachres_getfile ; 
 int /*<<< orphan*/  eachres_whoami ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 long FUNC7 (char*) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  xdr_bp_getfile_arg ; 
 int /*<<< orphan*/  xdr_bp_getfile_res ; 
 int /*<<< orphan*/  xdr_bp_whoami_arg ; 
 int /*<<< orphan*/  xdr_bp_whoami_res ; 

int
FUNC13(int argc, char **argv)
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
    FUNC12();

  server = argv[1];
  if ( ! FUNC11(server , "all") ) broadcast = 1;

  if ( ! broadcast ) {
    clnt = FUNC4(server,BOOTPARAMPROG, BOOTPARAMVERS, "udp");
    if ( clnt == NULL )
      FUNC5(1, "could not contact bootparam server on host %s", server);
  }

  switch (argc) {
  case 3:
    whoami_arg.client_address.address_type = IP_ADDR_TYPE;
    the_inet_addr = FUNC7(argv[2]);
    if ( the_inet_addr == INADDR_NONE)
      FUNC5(2, "bogus addr %s", argv[2]);
    FUNC0(&the_inet_addr,&whoami_arg.client_address.bp_address_u.ip_addr,4);

    if (! broadcast ) {
      whoami_res = FUNC2(&whoami_arg, clnt);
      FUNC8("Whoami returning:\n");
      if (FUNC10(whoami_res)) {
	FUNC5(1, "bad answer returned from server %s", server);
      } else
	FUNC6(0);
     } else {
       (void)FUNC3(BOOTPARAMPROG, BOOTPARAMVERS,
			       BOOTPARAMPROC_WHOAMI,
			       (xdrproc_t)xdr_bp_whoami_arg,
			       (char *)&whoami_arg,
			       (xdrproc_t)xdr_bp_whoami_res,
			       (char *)&stat_whoami_res,
			       (resultproc_t)eachres_whoami);
       FUNC6(0);
     }

  case 4:

    getfile_arg.client_name = argv[2];
    getfile_arg.file_id = argv[3];

    if (! broadcast ) {
      getfile_res = FUNC1(&getfile_arg,clnt);
      FUNC8("getfile returning:\n");
      if (FUNC9(getfile_res)) {
	FUNC5(1, "bad answer returned from server %s", server);
      } else
	FUNC6(0);
    } else {
      (void)FUNC3(BOOTPARAMPROG, BOOTPARAMVERS,
			       BOOTPARAMPROC_GETFILE,
			       (xdrproc_t)xdr_bp_getfile_arg,
			       (char *)&getfile_arg,
			       (xdrproc_t)xdr_bp_getfile_res,
			       (char *)&stat_getfile_res,
			       (resultproc_t)eachres_getfile);
      FUNC6(0);
    }

  default:

    FUNC12();
  }

}