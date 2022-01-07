
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int socket_path ;


 int AF_UNIX ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EINVAL ;
 int PATH_MAX ;
 int PF_UNIX ;
 char* SOCK_NAME_ONE ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_un*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int push_path (char*) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int socket (int ,int ,int ) ;
 int unlink (char*) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
bind_test(const char *directory_path)
{
 char socket_path[PATH_MAX];
 struct sockaddr_un sun;
 int sock1, sock2;

 sock1 = socket(PF_UNIX, SOCK_STREAM, 0);
 if (sock1 < 0) {
  warn("bind_test: socket(PF_UNIX, SOCK_STREAM, 0)");
  return (-1);
 }

 if (snprintf(socket_path, sizeof(socket_path), "%s/%s",
     directory_path, SOCK_NAME_ONE) >= PATH_MAX) {
  warn("bind_test: snprintf(socket_path)");
  close(sock1);
  return (-1);
 }

 bzero(&sun, sizeof(sun));
 sun.sun_len = sizeof(sun);
 sun.sun_family = AF_UNIX;
 if (snprintf(sun.sun_path, sizeof(sun.sun_path), "%s", socket_path)
     >= (int)sizeof(sun.sun_path)) {
  warn("bind_test: snprintf(sun.sun_path)");
  close(sock1);
  return (-1);
 }

 if (bind(sock1, (struct sockaddr *)&sun, sizeof(sun)) < 0) {
  warn("bind_test: bind(sun) #1");
  close(sock1);
  return (-1);
 }

 push_path(socket_path);





 if (bind(sock1, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
  warnx("bind_test: bind(sun) #2 succeeded");
  close(sock1);
  return (-1);
 }
 if (errno != EINVAL) {
  warn("bind_test: bind(sun) #2");
  close(sock1);
  return (-1);
 }

 sock2 = socket(PF_UNIX, SOCK_STREAM, 0);
 if (sock2 < 0) {
  warn("bind_test: socket(PF_UNIX, SOCK_STREAM, 0)");
  close(sock1);
  return (-1);
 }





 if (bind(sock2, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
  warnx("bind_test: bind(sun) #3 succeeded");
  close(sock1);
  close(sock2);
  return (-1);
 }
 if (errno != EADDRINUSE) {
  warn("bind_test: bind(sun) #2");
  close(sock1);
  close(sock2);
  return (-1);
 }

 close(sock1);






 if (bind(sock2, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
  warnx("bind_test: bind(sun) #4 succeeded");
  close(sock2);
  return (-1);
 }
 if (errno != EADDRINUSE) {
  warn("bind_test: bind(sun) #4");
  close(sock2);
  return (-1);
 }

 unlink(socket_path);





 if (bind(sock2, (struct sockaddr *)&sun, sizeof(sun)) < 0) {
  warn("bind_test: bind(sun) #5");
  close(sock2);
  return (-1);
 }

 close(sock2);
 return (0);
}
