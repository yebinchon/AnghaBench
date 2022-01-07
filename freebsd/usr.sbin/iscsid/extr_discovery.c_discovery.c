
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdu {int dummy; } ;
struct keys {int * keys_values; int ** keys_names; } ;
struct TYPE_2__ {int isc_iser; } ;
struct connection {TYPE_1__ conn_conf; } ;


 int KEYS_MAX ;
 int kernel_add (struct connection*,int ) ;
 int kernel_remove (struct connection*) ;
 int keys_add (struct keys*,char*,char*) ;
 int keys_delete (struct keys*) ;
 int keys_load (struct keys*,struct pdu*) ;
 struct keys* keys_new () ;
 int keys_save (struct keys*,struct pdu*) ;
 int log_debugx (char*,...) ;
 struct pdu* logout_new_request (struct connection*) ;
 struct pdu* logout_receive (struct connection*) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;
 scalar_t__ strcmp (int *,char*) ;
 struct pdu* text_new_request (struct connection*) ;
 struct pdu* text_receive (struct connection*) ;

void
discovery(struct connection *conn)
{
 struct pdu *request, *response;
 struct keys *request_keys, *response_keys;
 int i;

 log_debugx("beginning discovery session");
 request = text_new_request(conn);
 request_keys = keys_new();
 keys_add(request_keys, "SendTargets", "All");
 keys_save(request_keys, request);
 keys_delete(request_keys);
 request_keys = ((void*)0);
 pdu_send(request);
 pdu_delete(request);
 request = ((void*)0);

 log_debugx("waiting for Text Response");
 response = text_receive(conn);
 response_keys = keys_new();
 keys_load(response_keys, response);
 for (i = 0; i < KEYS_MAX; i++) {
  if (response_keys->keys_names[i] == ((void*)0))
   break;

  if (strcmp(response_keys->keys_names[i], "TargetName") != 0)
   continue;

  log_debugx("adding target %s", response_keys->keys_values[i]);



  kernel_add(conn, response_keys->keys_values[i]);
 }
 keys_delete(response_keys);
 pdu_delete(response);

 log_debugx("removing temporary discovery session");
 kernel_remove(conn);
 log_debugx("discovery done; logging out");
 request = logout_new_request(conn);
 pdu_send(request);
 pdu_delete(request);
 request = ((void*)0);

 log_debugx("waiting for Logout Response");
 response = logout_receive(conn);
 pdu_delete(response);

 log_debugx("discovery session done");
}
