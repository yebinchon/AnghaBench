
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct connection {int dummy; } ;
struct chap {int dummy; } ;
struct auth_group {scalar_t__ ag_type; } ;
struct auth {char const* a_user; int * a_secret; } ;


 scalar_t__ AG_TYPE_CHAP ;
 scalar_t__ AG_TYPE_CHAP_MUTUAL ;
 int assert (int) ;
 struct auth* auth_find (struct auth_group*,char const*) ;
 int chap_authenticate (struct chap*,int *) ;
 int chap_receive (struct chap*,char const*) ;
 int keys_delete (struct keys*) ;
 char* keys_find (struct keys*,char*) ;
 int keys_load (struct keys*,struct pdu*) ;
 struct keys* keys_new () ;
 int log_errx (int,char*,...) ;
 struct pdu* login_receive (struct connection*,int) ;
 int login_send_error (struct pdu*,int,int) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static struct pdu *
login_receive_chap_r(struct connection *conn, struct auth_group *ag,
    struct chap *chap, const struct auth **authp)
{
 struct pdu *request;
 struct keys *request_keys;
 const char *chap_n, *chap_r;
 const struct auth *auth;
 int error;

 request = login_receive(conn, 0);
 request_keys = keys_new();
 keys_load(request_keys, request);

 chap_n = keys_find(request_keys, "CHAP_N");
 if (chap_n == ((void*)0)) {
  login_send_error(request, 0x02, 0x07);
  log_errx(1, "received CHAP Login PDU without CHAP_N");
 }
 chap_r = keys_find(request_keys, "CHAP_R");
 if (chap_r == ((void*)0)) {
  login_send_error(request, 0x02, 0x07);
  log_errx(1, "received CHAP Login PDU without CHAP_R");
 }
 error = chap_receive(chap, chap_r);
 if (error != 0) {
  login_send_error(request, 0x02, 0x07);
  log_errx(1, "received CHAP Login PDU with malformed CHAP_R");
 }




 assert(ag->ag_type == AG_TYPE_CHAP ||
     ag->ag_type == AG_TYPE_CHAP_MUTUAL);
 auth = auth_find(ag, chap_n);
 if (auth == ((void*)0)) {
  login_send_error(request, 0x02, 0x01);
  log_errx(1, "received CHAP Login with invalid user \"%s\"",
      chap_n);
 }

 assert(auth->a_secret != ((void*)0));
 assert(strlen(auth->a_secret) > 0);

 error = chap_authenticate(chap, auth->a_secret);
 if (error != 0) {
  login_send_error(request, 0x02, 0x01);
  log_errx(1, "CHAP authentication failed for user \"%s\"",
      auth->a_user);
 }

 keys_delete(request_keys);

 *authp = auth;
 return (request);
}
