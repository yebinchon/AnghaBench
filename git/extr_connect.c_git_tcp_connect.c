
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;


 int dup (int) ;
 int git_tcp_connect_sock (char*,int) ;
 struct child_process no_fork ;

__attribute__((used)) static struct child_process *git_tcp_connect(int fd[2], char *host, int flags)
{
 int sockfd = git_tcp_connect_sock(host, flags);

 fd[0] = sockfd;
 fd[1] = dup(sockfd);

 return &no_fork;
}
