
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int LARGE_PACKET_MAX ;
 scalar_t__ errno ;
 int error_clnt (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int send_sideband (int,int,char*,scalar_t__,int ) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static ssize_t process_input(int child_fd, int band)
{
 char buf[16384];
 ssize_t sz = read(child_fd, buf, sizeof(buf));
 if (sz < 0) {
  if (errno != EAGAIN && errno != EINTR)
   error_clnt("read error: %s\n", strerror(errno));
  return sz;
 }
 send_sideband(1, band, buf, sz, LARGE_PACKET_MAX);
 return sz;
}
