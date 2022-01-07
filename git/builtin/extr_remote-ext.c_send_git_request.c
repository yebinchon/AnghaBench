
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int packet_write_fmt (int,char*,char const*,char const*,int ,...) ;

__attribute__((used)) static void send_git_request(int stdin_fd, const char *serv, const char *repo,
 const char *vhost)
{
 if (!vhost)
  packet_write_fmt(stdin_fd, "%s %s%c", serv, repo, 0);
 else
  packet_write_fmt(stdin_fd, "%s %s%chost=%s%c", serv, repo, 0,
        vhost, 0);
}
