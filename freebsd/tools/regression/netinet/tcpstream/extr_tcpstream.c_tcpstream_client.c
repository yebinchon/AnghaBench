
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int sin ;


 int MAX_LONGS ;
 int MAX_LOOPS ;
 int PF_INET ;
 int SOCK_STREAM ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int errx (int,char*,int ) ;
 int fflush (int ) ;
 int fill_buffer (long*,int) ;
 int perror (char*) ;
 int printf (char*,int,int) ;
 int send (int,long*,int,int ) ;
 int socket (int ,int ,int ) ;
 int srandom (long) ;
 int stdout ;
 int strerror (int ) ;

__attribute__((used)) static void
tcpstream_client(struct sockaddr_in sin, long seed)
{
 long buffer[MAX_LONGS];
 ssize_t len;
 int i, j, sock;

 srandom(seed);

 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock == -1)
  errx(-1, "socket: %s", strerror(errno));

 if (connect(sock, (struct sockaddr *) &sin, sizeof(sin)) == -1)
  errx(-1, "connect: %s", strerror(errno));

 for (j = 0; j < MAX_LOOPS; j++) {
  for (i = 0; i < MAX_LONGS; i++) {
   fill_buffer(buffer, i);
   len = send(sock, buffer, i * sizeof(long), 0);
   if (len == -1) {
    printf("%d bytes written of %d expected\n",
        len, i * sizeof(long));
    fflush(stdout);
    perror("send");
    goto done;
   }
  }
 }

done:
 close(sock);
}
