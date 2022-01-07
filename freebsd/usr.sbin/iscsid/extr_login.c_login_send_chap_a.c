
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct connection {int dummy; } ;


 int BHSLR_STAGE_SECURITY_NEGOTIATION ;
 int keys_add (struct keys*,char*,char*) ;
 int keys_delete (struct keys*) ;
 struct keys* keys_new () ;
 int keys_save (struct keys*,struct pdu*) ;
 struct pdu* login_new_request (struct connection*,int ) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;

__attribute__((used)) static void
login_send_chap_a(struct connection *conn)
{
 struct pdu *request;
 struct keys *request_keys;

 request = login_new_request(conn, BHSLR_STAGE_SECURITY_NEGOTIATION);
 request_keys = keys_new();
 keys_add(request_keys, "CHAP_A", "5");
 keys_save(request_keys, request);
 keys_delete(request_keys);
 pdu_send(request);
 pdu_delete(request);
}
