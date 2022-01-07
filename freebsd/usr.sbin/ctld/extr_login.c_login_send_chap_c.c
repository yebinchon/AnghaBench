
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct chap {int dummy; } ;


 char* chap_get_challenge (struct chap*) ;
 char* chap_get_id (struct chap*) ;
 int free (char*) ;
 int keys_add (struct keys*,char*,char*) ;
 int keys_delete (struct keys*) ;
 struct keys* keys_new () ;
 int keys_save (struct keys*,struct pdu*) ;
 struct pdu* login_new_response (struct pdu*) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;

__attribute__((used)) static void
login_send_chap_c(struct pdu *request, struct chap *chap)
{
 struct pdu *response;
 struct keys *response_keys;
 char *chap_c, *chap_i;

 chap_c = chap_get_challenge(chap);
 chap_i = chap_get_id(chap);

 response = login_new_response(request);
 response_keys = keys_new();
 keys_add(response_keys, "CHAP_A", "5");
 keys_add(response_keys, "CHAP_I", chap_i);
 keys_add(response_keys, "CHAP_C", chap_c);
 free(chap_i);
 free(chap_c);
 keys_save(response_keys, response);
 pdu_send(response);
 pdu_delete(response);
 keys_delete(response_keys);
}
