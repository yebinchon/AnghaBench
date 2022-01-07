
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdu {struct connection* pdu_connection; } ;
struct keys {int dummy; } ;
struct TYPE_2__ {int isc_mutual_secret; int isc_mutual_user; } ;
struct connection {int * conn_mutual_chap; TYPE_1__ conn_conf; } ;


 int chap_authenticate (int *,int ) ;
 int chap_delete (int *) ;
 int chap_receive (int *,char const*) ;
 int fail (struct connection*,char*) ;
 int keys_delete (struct keys*) ;
 char* keys_find (struct keys*,char*) ;
 int keys_load (struct keys*,struct pdu const*) ;
 struct keys* keys_new () ;
 int log_debugx (char*) ;
 int log_errx (int,char*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void
login_verify_mutual(const struct pdu *response)
{
 struct connection *conn;
 struct keys *response_keys;
 const char *chap_n, *chap_r;
 int error;

 conn = response->pdu_connection;

 response_keys = keys_new();
 keys_load(response_keys, response);

        chap_n = keys_find(response_keys, "CHAP_N");
        if (chap_n == ((void*)0))
                log_errx(1, "received CHAP Response PDU without CHAP_N");
        chap_r = keys_find(response_keys, "CHAP_R");
        if (chap_r == ((void*)0))
                log_errx(1, "received CHAP Response PDU without CHAP_R");

 error = chap_receive(conn->conn_mutual_chap, chap_r);
 if (error != 0)
                log_errx(1, "received CHAP Response PDU with invalid CHAP_R");

 if (strcmp(chap_n, conn->conn_conf.isc_mutual_user) != 0) {
  fail(conn, "Mutual CHAP failed");
  log_errx(1, "mutual CHAP authentication failed: wrong user");
 }

 error = chap_authenticate(conn->conn_mutual_chap,
     conn->conn_conf.isc_mutual_secret);
 if (error != 0) {
  fail(conn, "Mutual CHAP failed");
                log_errx(1, "mutual CHAP authentication failed: wrong secret");
 }

 keys_delete(response_keys);
 chap_delete(conn->conn_mutual_chap);
 conn->conn_mutual_chap = ((void*)0);

 log_debugx("mutual CHAP authentication succeeded");
}
