
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct isns_req {int dummy; } ;
struct isns {int i_addr; struct conf* i_conf; } ;
struct conf {int conf_targets; } ;
struct TYPE_2__ {char const* t_name; } ;


 int ISNS_FLAG_CLIENT ;
 int ISNS_FUNC_DEVATTRQRY ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int isns_req_add (struct isns_req*,int,int ,int *) ;
 int isns_req_add_delim (struct isns_req*) ;
 int isns_req_add_str (struct isns_req*,int,char const*) ;
 struct isns_req* isns_req_create (int ,int ) ;
 int isns_req_free (struct isns_req*) ;
 scalar_t__ isns_req_get_status (struct isns_req*) ;
 int isns_req_receive (int,struct isns_req*) ;
 int isns_req_send (int,struct isns_req*) ;
 int log_warn (char*,int ) ;
 int log_warnx (char*,scalar_t__,int ) ;

__attribute__((used)) static int
isns_do_check(struct isns *isns, int s, const char *hostname)
{
 struct conf *conf = isns->i_conf;
 struct isns_req *req;
 int res = 0;
 uint32_t error;

 req = isns_req_create(ISNS_FUNC_DEVATTRQRY, ISNS_FLAG_CLIENT);
 isns_req_add_str(req, 32, TAILQ_FIRST(&conf->conf_targets)->t_name);
 isns_req_add_str(req, 1, hostname);
 isns_req_add_delim(req);
 isns_req_add(req, 2, 0, ((void*)0));
 res = isns_req_send(s, req);
 if (res < 0) {
  log_warn("send(2) failed for %s", isns->i_addr);
  goto quit;
 }
 res = isns_req_receive(s, req);
 if (res < 0) {
  log_warn("receive(2) failed for %s", isns->i_addr);
  goto quit;
 }
 error = isns_req_get_status(req);
 if (error != 0) {
  log_warnx("iSNS check error %d for %s", error, isns->i_addr);
  res = -1;
 }
quit:
 isns_req_free(req);
 return (res);
}
