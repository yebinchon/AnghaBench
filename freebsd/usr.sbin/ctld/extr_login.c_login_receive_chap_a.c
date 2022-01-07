
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct connection {int dummy; } ;


 int keys_delete (struct keys*) ;
 char* keys_find (struct keys*,char*) ;
 int keys_load (struct keys*,struct pdu*) ;
 struct keys* keys_new () ;
 int log_errx (int,char*,...) ;
 scalar_t__ login_list_contains (char const*,char*) ;
 struct pdu* login_receive (struct connection*,int) ;
 int login_send_error (struct pdu*,int,int) ;

__attribute__((used)) static struct pdu *
login_receive_chap_a(struct connection *conn)
{
 struct pdu *request;
 struct keys *request_keys;
 const char *chap_a;

 request = login_receive(conn, 0);
 request_keys = keys_new();
 keys_load(request_keys, request);

 chap_a = keys_find(request_keys, "CHAP_A");
 if (chap_a == ((void*)0)) {
  login_send_error(request, 0x02, 0x07);
  log_errx(1, "received CHAP Login PDU without CHAP_A");
 }
 if (login_list_contains(chap_a, "5") == 0) {
  login_send_error(request, 0x02, 0x01);
  log_errx(1, "received CHAP Login PDU with unsupported CHAP_A "
      "\"%s\"", chap_a);
 }
 keys_delete(request_keys);

 return (request);
}
