
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int alarm (int ) ;
 scalar_t__ alarmed ;
 int chat_logf (char*) ;
 scalar_t__ errno ;
 scalar_t__ put_char (int) ;
 scalar_t__ verbose ;

int
write_char(int c)
{
    if (alarmed || put_char(c) < 0) {
 alarm(0);
 alarmed = 0;

 if (verbose) {
     if (errno == EINTR || errno == EWOULDBLOCK)
  chat_logf(" -- write timed out");
     else
  chat_logf(" -- write failed: %m");
 }
 return (0);
    }
    return (1);
}
