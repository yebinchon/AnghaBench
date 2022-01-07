
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int security_description; int load_factor; int psm; } ;
typedef TYPE_1__ sdp_nap_profile_t ;
typedef int p ;


 int EXIT_FAILURE ;
 int control_path ;
 scalar_t__ errno ;
 int exit (int ) ;
 scalar_t__ l2cap_mode ;
 int l2cap_psm ;
 int local_bdaddr ;
 int log_err (char*,...) ;
 int memset (TYPE_1__*,int ,int) ;
 int sdp_change_service (int *,scalar_t__,int *,int) ;
 scalar_t__ sdp_error (int *) ;
 int * sdp_open_local (int ) ;
 int sdp_register_service (int *,int ,int *,int *,int,scalar_t__*) ;
 int server_avail ;
 scalar_t__ server_handle ;
 int * server_ss ;
 int service_class ;
 int service_name ;

__attribute__((used)) static void
server_register(void)
{
 sdp_nap_profile_t p;
 int rv;

 if (server_ss == ((void*)0)) {
  server_ss = sdp_open_local(control_path);
  if (server_ss == ((void*)0) || sdp_error(server_ss) != 0) {
   log_err("failed to contact SDP server");
   return;
  }
 }

 memset(&p, 0, sizeof(p));
 p.psm = l2cap_psm;
 p.load_factor = server_avail;
 p.security_description = (l2cap_mode == 0 ? 0x0000 : 0x0001);

 if (server_handle)
  rv = sdp_change_service(server_ss, server_handle,
      (uint8_t *)&p, sizeof(p));
 else
  rv = sdp_register_service(server_ss, service_class,
      &local_bdaddr, (uint8_t *)&p, sizeof(p), &server_handle);

 if (rv != 0) {
  errno = sdp_error(server_ss);
  log_err("%s: %m", service_name);
  exit(EXIT_FAILURE);
 }
}
