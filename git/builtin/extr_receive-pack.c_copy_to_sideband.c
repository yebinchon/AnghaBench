
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef int ssize_t ;
typedef int data ;
typedef int buf ;


 scalar_t__ EINTR ;
 scalar_t__ KEEPALIVE_AFTER_NUL ;
 scalar_t__ KEEPALIVE_ALWAYS ;
 scalar_t__ KEEPALIVE_NEVER ;
 int POLLIN ;
 int close (int) ;
 scalar_t__ errno ;
 int keepalive_in_sec ;
 char* memchr (char*,char,int) ;
 int poll (struct pollfd*,int,int) ;
 int send_sideband (int,int,char const*,int,int ) ;
 scalar_t__ use_keepalive ;
 int use_sideband ;
 int write_or_die (int,char const*,int) ;
 int xread (int,char*,int) ;

__attribute__((used)) static int copy_to_sideband(int in, int out, void *arg)
{
 char data[128];
 int keepalive_active = 0;

 if (keepalive_in_sec <= 0)
  use_keepalive = KEEPALIVE_NEVER;
 if (use_keepalive == KEEPALIVE_ALWAYS)
  keepalive_active = 1;

 while (1) {
  ssize_t sz;

  if (keepalive_active) {
   struct pollfd pfd;
   int ret;

   pfd.fd = in;
   pfd.events = POLLIN;
   ret = poll(&pfd, 1, 1000 * keepalive_in_sec);

   if (ret < 0) {
    if (errno == EINTR)
     continue;
    else
     break;
   } else if (ret == 0) {

    static const char buf[] = "0005\1";
    write_or_die(1, buf, sizeof(buf) - 1);
    continue;
   }
  }

  sz = xread(in, data, sizeof(data));
  if (sz <= 0)
   break;

  if (use_keepalive == KEEPALIVE_AFTER_NUL && !keepalive_active) {
   const char *p = memchr(data, '\0', sz);
   if (p) {





    keepalive_active = 1;
    send_sideband(1, 2, data, p - data, use_sideband);
    send_sideband(1, 2, p + 1, sz - (p - data + 1), use_sideband);
    continue;
   }
  }





  send_sideband(1, 2, data, sz, use_sideband);
 }
 close(in);
 return 0;
}
