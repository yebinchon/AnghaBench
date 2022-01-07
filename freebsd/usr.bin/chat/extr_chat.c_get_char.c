
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int STDIN_FILENO ;
 int chat_logf (char*,int) ;
 int fatal (int,char*) ;
 int fcntl (int ,int ,int) ;
 int read (int ,char*,int) ;

int
get_char(void)
{
    int status;
    char c;

    status = read(STDIN_FILENO, &c, 1);

    switch (status) {
    case 1:
 return ((int)c & 0x7F);

    default:
 chat_logf("warning: read() on stdin returned %d", status);

    case -1:
 if ((status = fcntl(0, F_GETFL, 0)) == -1)
     fatal(2, "Can't get file mode flags on stdin: %m");

 if (fcntl(0, F_SETFL, status & ~O_NONBLOCK) == -1)
     fatal(2, "Can't set file mode flags on stdin: %m");

 return (-1);
    }
}
