
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 long INT_MAX ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int ioctl (int ,int ,struct winsize*) ;
 long strtol (char*,char**,int) ;
 int warnx (char*) ;

__attribute__((used)) static int
ttywidth(void)
{
 struct winsize ws;
 long width;
 char *cols, *ep;

 if ((cols = getenv("COLUMNS")) != ((void*)0) && *cols != '\0') {
  errno = 0;
  width = strtol(cols, &ep, 10);
  if (errno || width <= 0 || width > INT_MAX || ep == cols ||
      *ep != '\0')
   warnx("invalid COLUMNS environment variable ignored");
  else
   return (width);
 }
 if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) != -1)
  return (ws.ws_col);

 return (80);
}
