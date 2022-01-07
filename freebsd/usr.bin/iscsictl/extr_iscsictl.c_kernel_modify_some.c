
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_conf {int isc_enable; int isc_secret; int isc_user; int isc_target_addr; int isc_target; } ;
struct iscsi_session_state {unsigned int iss_id; struct iscsi_session_conf iss_conf; } ;
struct iscsi_session_modify {unsigned int isl_nentries; unsigned int ism_session_id; int ism_conf; struct iscsi_session_state* isl_pstates; } ;
struct iscsi_session_list {unsigned int isl_nentries; unsigned int ism_session_id; int ism_conf; struct iscsi_session_state* isl_pstates; } ;
typedef int ism ;
typedef int isl ;


 scalar_t__ EMSGSIZE ;
 int ENABLE_OFF ;
 int ENABLE_ON ;
 int ISCSISLIST ;
 int ISCSISMODIFY ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct iscsi_session_modify*) ;
 int memcpy (int *,struct iscsi_session_conf*,int) ;
 int memset (struct iscsi_session_modify*,int ,int) ;
 struct iscsi_session_state* realloc (struct iscsi_session_state*,unsigned int) ;
 int strlcpy (int ,char const*,int) ;
 int xo_err (int,char*) ;
 int xo_errx (int,char*,...) ;
 int xo_warn (char*) ;

__attribute__((used)) static void
kernel_modify_some(int iscsi_fd, unsigned int session_id, const char *target,
  const char *target_addr, const char *user, const char *secret, int enable)
{
 struct iscsi_session_state *states = ((void*)0);
 struct iscsi_session_state *state;
 struct iscsi_session_conf *conf;
 struct iscsi_session_list isl;
 struct iscsi_session_modify ism;
 unsigned int i, nentries = 1;
 int error;

 for (;;) {
  states = realloc(states,
      nentries * sizeof(struct iscsi_session_state));
  if (states == ((void*)0))
   xo_err(1, "realloc");

  memset(&isl, 0, sizeof(isl));
  isl.isl_nentries = nentries;
  isl.isl_pstates = states;

  error = ioctl(iscsi_fd, ISCSISLIST, &isl);
  if (error != 0 && errno == EMSGSIZE) {
   nentries *= 4;
   continue;
  }
  break;
 }
 if (error != 0)
  xo_errx(1, "ISCSISLIST");

 for (i = 0; i < isl.isl_nentries; i++) {
  state = &states[i];

  if (state->iss_id == session_id)
   break;
 }
 if (i == isl.isl_nentries)
  xo_errx(1, "session-id %u not found", session_id);

 conf = &state->iss_conf;

 if (target != ((void*)0))
  strlcpy(conf->isc_target, target, sizeof(conf->isc_target));
 if (target_addr != ((void*)0))
  strlcpy(conf->isc_target_addr, target_addr,
      sizeof(conf->isc_target_addr));
 if (user != ((void*)0))
  strlcpy(conf->isc_user, user, sizeof(conf->isc_user));
 if (secret != ((void*)0))
  strlcpy(conf->isc_secret, secret, sizeof(conf->isc_secret));
 if (enable == ENABLE_ON)
  conf->isc_enable = 1;
 else if (enable == ENABLE_OFF)
  conf->isc_enable = 0;

 memset(&ism, 0, sizeof(ism));
 ism.ism_session_id = session_id;
 memcpy(&ism.ism_conf, conf, sizeof(ism.ism_conf));
 error = ioctl(iscsi_fd, ISCSISMODIFY, &ism);
 if (error != 0)
  xo_warn("ISCSISMODIFY");
}
