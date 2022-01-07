
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int sun_path; int sun_family; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct runtime_env {int queue; int sockfd; } ;
struct kevent {int dummy; } ;
struct configuration {int force_unlink; int socket_mode; int socket_path; } ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int ) ;
 int F_SETFL ;
 int LOG_ERR_2 (char*,char*,int ) ;
 int LOG_MSG_2 (char*,char*,...) ;
 int O_NONBLOCK ;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int TRACE_IN (struct runtime_env* (*) (struct configuration*)) ;
 int TRACE_OUT (struct runtime_env* (*) (struct configuration*)) ;
 int assert (int) ;
 int bind (int ,struct sockaddr*,int) ;
 struct runtime_env* calloc (int,int) ;
 int chmod (int ,int ) ;
 int close (int ) ;
 int fcntl (int ,int ,int ) ;
 int free (struct runtime_env*) ;
 int kevent (int,struct kevent*,int,int *,int ,struct timespec*) ;
 int kqueue () ;
 int listen (int ,int) ;
 int memset (struct timespec*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;
 int unlink (int ) ;

__attribute__((used)) static struct runtime_env *
init_runtime_env(struct configuration *config)
{
 int serv_addr_len;
 struct sockaddr_un serv_addr;

 struct kevent eventlist;
 struct timespec timeout;

 struct runtime_env *retval;

 TRACE_IN(init_runtime_env);
 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 retval->sockfd = socket(PF_LOCAL, SOCK_STREAM, 0);

 if (config->force_unlink == 1)
  unlink(config->socket_path);

 memset(&serv_addr, 0, sizeof(struct sockaddr_un));
 serv_addr.sun_family = PF_LOCAL;
 strlcpy(serv_addr.sun_path, config->socket_path,
  sizeof(serv_addr.sun_path));
 serv_addr_len = sizeof(serv_addr.sun_family) +
  strlen(serv_addr.sun_path) + 1;

 if (bind(retval->sockfd, (struct sockaddr *)&serv_addr,
  serv_addr_len) == -1) {
  close(retval->sockfd);
  free(retval);

  LOG_ERR_2("runtime environment", "can't bind socket to path: "
   "%s", config->socket_path);
  TRACE_OUT(init_runtime_env);
  return (((void*)0));
 }
 LOG_MSG_2("runtime environment", "using socket %s",
  config->socket_path);





 chmod(config->socket_path, config->socket_mode);
 listen(retval->sockfd, -1);
 fcntl(retval->sockfd, F_SETFL, O_NONBLOCK);

 retval->queue = kqueue();
 assert(retval->queue != -1);

 EV_SET(&eventlist, retval->sockfd, EVFILT_READ, EV_ADD | EV_ONESHOT,
  0, 0, 0);
 memset(&timeout, 0, sizeof(struct timespec));
 kevent(retval->queue, &eventlist, 1, ((void*)0), 0, &timeout);

 LOG_MSG_2("runtime environment", "successfully initialized");
 TRACE_OUT(init_runtime_env);
 return (retval);
}
