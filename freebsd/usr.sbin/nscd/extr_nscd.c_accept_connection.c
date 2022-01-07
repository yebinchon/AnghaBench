
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct timespec {int dummy; } ;
struct runtime_env {int queue; } ;
struct TYPE_2__ {int tv_sec; } ;
struct query_state {int kevent_watermark; TYPE_1__ timeout; } ;
struct kevent {int ident; } ;
struct configuration {int dummy; } ;
typedef int gid_t ;


 int EVFILT_READ ;
 int EVFILT_TIMER ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int,int ,int,int ,int,struct query_state*) ;
 int LOG_ERR_2 (char*,char*,...) ;
 int NOTE_LOWAT ;
 int TRACE_IN (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ;
 int TRACE_OUT (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ;
 int accept (int ,int *,int *) ;
 int errno ;
 scalar_t__ getpeereid (int,int *,int *) ;
 struct query_state* init_query_state (int,int,int ,int ) ;
 int kevent (int ,struct kevent*,int,int *,int ,struct timespec*) ;
 int memset (struct timespec*,int ,int) ;

__attribute__((used)) static void
accept_connection(struct kevent *event_data, struct runtime_env *env,
 struct configuration *config)
{
 struct kevent eventlist[2];
 struct timespec timeout;
 struct query_state *qstate;

 int fd;
 int res;

 uid_t euid;
 gid_t egid;

 TRACE_IN(accept_connection);
 fd = accept(event_data->ident, ((void*)0), ((void*)0));
 if (fd == -1) {
  LOG_ERR_2("accept_connection", "error %d during accept()",
      errno);
  TRACE_OUT(accept_connection);
  return;
 }

 if (getpeereid(fd, &euid, &egid) != 0) {
  LOG_ERR_2("accept_connection", "error %d during getpeereid()",
   errno);
  TRACE_OUT(accept_connection);
  return;
 }

 qstate = init_query_state(fd, sizeof(int), euid, egid);
 if (qstate == ((void*)0)) {
  LOG_ERR_2("accept_connection", "can't init query_state");
  TRACE_OUT(accept_connection);
  return;
 }

 memset(&timeout, 0, sizeof(struct timespec));
 EV_SET(&eventlist[0], fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
  0, qstate->timeout.tv_sec * 1000, qstate);
 EV_SET(&eventlist[1], fd, EVFILT_READ, EV_ADD | EV_ONESHOT,
  NOTE_LOWAT, qstate->kevent_watermark, qstate);
 res = kevent(env->queue, eventlist, 2, ((void*)0), 0, &timeout);
 if (res < 0)
  LOG_ERR_2("accept_connection", "kevent error");

 TRACE_OUT(accept_connection);
}
