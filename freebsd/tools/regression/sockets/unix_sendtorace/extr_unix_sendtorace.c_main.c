
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int datagram_test () ;
 int err (int,char*) ;
 int mkstemp (int ) ;
 int socket_path ;
 int stream_test () ;
 int unlink (int ) ;

int
main(void)
{

 if (mkstemp(socket_path) == -1)
  err(1, "mkstemp failed");
 (void)unlink(socket_path);
 datagram_test();
 if (0)
  stream_test();
 return (0);
}
