
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 char* character (int) ;
 int strlen (char*) ;
 int write (int ,char*,int) ;

void
echo_stderr(int n)
{
    static int need_lf;
    char *s;

    switch (n) {
    case '\r':
 break;
    case -1:
 if (need_lf == 0)
     break;

    case '\n':
 write(STDERR_FILENO, "\n", 1);
 need_lf = 0;
 break;
    default:
 s = character(n);
 write(STDERR_FILENO, s, strlen(s));
 need_lf = 1;
 break;
    }
}
