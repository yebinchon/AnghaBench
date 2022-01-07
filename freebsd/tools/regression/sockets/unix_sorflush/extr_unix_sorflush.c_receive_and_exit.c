
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int ch ;


 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ recv (int,char*,int,int ) ;

__attribute__((used)) static void
receive_and_exit(int s)
{
 ssize_t ssize;
 char ch;

 ssize = recv(s, &ch, sizeof(ch), 0);
 if (ssize < 0)
  err(-1, "receive_and_exit: recv");
 exit(0);
}
