
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;
struct nv {int dummy; } ;
struct hastd_config {int hc_controladdr; } ;


 int HAST_TIMEOUT ;
 int cfgpath ;
 int hast_proto_recv_hdr (struct proto_conn*,struct nv**) ;
 int hast_proto_send (int *,struct proto_conn*,struct nv*,int *,int ) ;
 int nv_free (struct nv*) ;
 int nv_get_int16 (struct nv*,char*) ;
 int nv_set_error (struct nv*,int ) ;
 int pjdlog_error (char*,int) ;
 int proto_client (int *,int,struct proto_conn**) ;
 int proto_close (struct proto_conn*) ;
 int proto_connect (struct proto_conn*,int ) ;
 struct hastd_config* yy_config_parse (int ,int) ;

__attribute__((used)) static int
hastctl(struct nv *nvin, struct nv **nvout)
{
 struct hastd_config *cfg;
 struct proto_conn *conn;
 struct nv *nv;
 int error;

 cfg = yy_config_parse(cfgpath, 1);
 if (cfg == ((void*)0))
  return (-1);


 if (proto_client(((void*)0), cfg->hc_controladdr, &conn) == -1) {
  pjdlog_error("Unable to setup control connection to %s",
      cfg->hc_controladdr);
  return (-1);
 }

 if (proto_connect(conn, HAST_TIMEOUT) == -1) {
  pjdlog_error("Unable to connect to hastd via %s",
      cfg->hc_controladdr);
  proto_close(conn);
  return (-1);
 }

 if (hast_proto_send(((void*)0), conn, nvin, ((void*)0), 0) == -1) {
  pjdlog_error("Unable to send command to hastd via %s",
      cfg->hc_controladdr);
  proto_close(conn);
  return (-1);
 }

 if (hast_proto_recv_hdr(conn, &nv) == -1) {
  pjdlog_error("cannot receive reply from hastd via %s",
      cfg->hc_controladdr);
  proto_close(conn);
  return (-1);
 }
 proto_close(conn);
 error = nv_get_int16(nv, "error");
 if (error != 0) {
  pjdlog_error("Error %d received from hastd.", error);
  nv_free(nv);
  return (-1);
 }
 nv_set_error(nv, 0);
 *nvout = nv;
 return (0);
}
