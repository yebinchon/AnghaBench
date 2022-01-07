
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socklist {int sl_socket; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int MAXLINE ;
 int close (int) ;
 scalar_t__ errno ;
 int logerror (char*) ;
 int memmove (char*,char*,int) ;
 int printsys (char*) ;
 int read (int,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
socklist_recv_file(struct socklist *sl)
{
 char *p, *q, line[MAXLINE + 1];
 int len, i;

 len = 0;
 for (;;) {
  i = read(sl->sl_socket, line + len, MAXLINE - 1 - len);
  if (i > 0) {
   line[i + len] = '\0';
  } else {
   if (i < 0 && errno != EINTR && errno != EAGAIN) {
    logerror("klog");
    close(sl->sl_socket);
    sl->sl_socket = -1;
   }
   break;
  }

  for (p = line; (q = strchr(p, '\n')) != ((void*)0); p = q + 1) {
   *q = '\0';
   printsys(p);
  }
  len = strlen(p);
  if (len >= MAXLINE - 1) {
   printsys(p);
   len = 0;
  }
  if (len > 0)
   memmove(line, p, len + 1);
 }
 if (len > 0)
  printsys(line);

 return (len);
}
