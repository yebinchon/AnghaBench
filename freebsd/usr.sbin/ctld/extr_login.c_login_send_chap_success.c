
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchap {int dummy; } ;
struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct auth {char* a_mutual_user; int a_mutual_secret; int a_user; TYPE_1__* a_auth_group; } ;
struct TYPE_2__ {scalar_t__ ag_type; } ;


 scalar_t__ AG_TYPE_CHAP_MUTUAL ;
 int BHSLR_STAGE_OPERATIONAL_NEGOTIATION ;
 int free (char*) ;
 int keys_add (struct keys*,char*,char*) ;
 int keys_delete (struct keys*) ;
 char* keys_find (struct keys*,char*) ;
 int keys_load (struct keys*,struct pdu*) ;
 struct keys* keys_new () ;
 int keys_save (struct keys*,struct pdu*) ;
 int log_debugx (char*,...) ;
 int log_errx (int,char*,...) ;
 struct pdu* login_new_response (struct pdu*) ;
 int login_send_error (struct pdu*,int,int) ;
 int login_set_nsg (struct pdu*,int ) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;
 int rchap_delete (struct rchap*) ;
 char* rchap_get_response (struct rchap*) ;
 struct rchap* rchap_new (int ) ;
 int rchap_receive (struct rchap*,char const*,char const*) ;

__attribute__((used)) static void
login_send_chap_success(struct pdu *request,
    const struct auth *auth)
{
 struct pdu *response;
 struct keys *request_keys, *response_keys;
 struct rchap *rchap;
 const char *chap_i, *chap_c;
 char *chap_r;
 int error;

 response = login_new_response(request);
 login_set_nsg(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);




 request_keys = keys_new();
 keys_load(request_keys, request);
 chap_i = keys_find(request_keys, "CHAP_I");
 chap_c = keys_find(request_keys, "CHAP_C");
 if (chap_i != ((void*)0) || chap_c != ((void*)0)) {
  if (chap_i == ((void*)0)) {
   login_send_error(request, 0x02, 0x07);
   log_errx(1, "initiator requested target "
       "authentication, but didn't send CHAP_I");
  }
  if (chap_c == ((void*)0)) {
   login_send_error(request, 0x02, 0x07);
   log_errx(1, "initiator requested target "
       "authentication, but didn't send CHAP_C");
  }
  if (auth->a_auth_group->ag_type != AG_TYPE_CHAP_MUTUAL) {
   login_send_error(request, 0x02, 0x01);
   log_errx(1, "initiator requests target authentication "
       "for user \"%s\", but mutual user/secret "
       "is not set", auth->a_user);
  }

  log_debugx("performing mutual authentication as user \"%s\"",
      auth->a_mutual_user);

  rchap = rchap_new(auth->a_mutual_secret);
  error = rchap_receive(rchap, chap_i, chap_c);
  if (error != 0) {
   login_send_error(request, 0x02, 0x07);
   log_errx(1, "received CHAP Login PDU with malformed "
       "CHAP_I or CHAP_C");
  }
  chap_r = rchap_get_response(rchap);
  rchap_delete(rchap);
  response_keys = keys_new();
  keys_add(response_keys, "CHAP_N", auth->a_mutual_user);
  keys_add(response_keys, "CHAP_R", chap_r);
  free(chap_r);
  keys_save(response_keys, response);
  keys_delete(response_keys);
 } else {
  log_debugx("initiator did not request target authentication");
 }

 keys_delete(request_keys);
 pdu_send(response);
 pdu_delete(response);
}
