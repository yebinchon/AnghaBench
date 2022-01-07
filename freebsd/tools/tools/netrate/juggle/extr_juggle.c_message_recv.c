
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ssize_t ;
typedef int buffer ;


 int EMSGSIZE ;
 int MESSAGELEN ;
 int errno ;
 int read (int,int *,int) ;

__attribute__((used)) static int
message_recv(int s)
{
 u_char buffer[MESSAGELEN];
 ssize_t len;

 len = read(s, buffer, sizeof(buffer));
 if (len == -1)
  return (-1);
 if (len != sizeof(buffer)) {
  errno = EMSGSIZE;
  return (-1);
 }
 return (0);
}
