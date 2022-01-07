
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_state {int iss_connected; } ;
struct iscsi_session_list {unsigned int isl_nentries; struct iscsi_session_state* isl_pstates; } ;
typedef int isl ;


 scalar_t__ EMSGSIZE ;
 int ISCSISLIST ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct iscsi_session_list*) ;
 int memset (struct iscsi_session_list*,int ,int) ;
 struct iscsi_session_state* realloc (struct iscsi_session_state*,unsigned int) ;
 int sleep (int) ;
 int xo_err (int,char*) ;
 int xo_warn (char*) ;

__attribute__((used)) static int
kernel_wait(int iscsi_fd, int timeout)
{
 struct iscsi_session_state *states = ((void*)0);
 const struct iscsi_session_state *state;
 struct iscsi_session_list isl;
 unsigned int i, nentries = 1;
 bool all_connected;
 int error;

 for (;;) {
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
  if (error != 0) {
   xo_warn("ISCSISLIST");
   return (error);
  }

  all_connected = 1;
  for (i = 0; i < isl.isl_nentries; i++) {
   state = &states[i];

   if (!state->iss_connected) {
    all_connected = 0;
    break;
   }
  }

  if (all_connected)
   return (0);

  sleep(1);

  if (timeout > 0) {
   timeout--;
   if (timeout == 0)
    return (1);
  }
 }
}
