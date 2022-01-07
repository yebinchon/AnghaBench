
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int STDOUT_FILENO ;
 int chat_logf (char*,int) ;
 int fatal (int,char*) ;
 int fcntl (int ,int ,int) ;
 int usleep (int) ;
 int write (int ,char*,int) ;

int put_char(int c)
{
    int status;
    char ch = c;

    usleep(10000);

    status = write(STDOUT_FILENO, &ch, 1);

    switch (status) {
    case 1:
 return (0);

    default:
 chat_logf("warning: write() on stdout returned %d", status);

    case -1:
 if ((status = fcntl(0, F_GETFL, 0)) == -1)
     fatal(2, "Can't get file mode flags on stdin, %m");

 if (fcntl(0, F_SETFL, status & ~O_NONBLOCK) == -1)
     fatal(2, "Can't set file mode flags on stdin: %m");

 return (-1);
    }
}
