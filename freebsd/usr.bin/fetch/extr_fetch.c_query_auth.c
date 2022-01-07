
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcflag_t ;
struct url {char* scheme; char* host; int port; char* user; char* pwd; } ;
struct termios {int c_lflag; } ;


 int ECHO ;
 int ECHONL ;
 int ICANON ;
 int STDIN_FILENO ;
 int TCSAFLUSH ;
 int TCSANOW ;
 int TCSASOFT ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int stdin ;
 int strlen (char*) ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int,struct termios*) ;

__attribute__((used)) static int
query_auth(struct url *URL)
{
 struct termios tios;
 tcflag_t saved_flags;
 int i, nopwd;

 fprintf(stderr, "Authentication required for <%s://%s:%d/>!\n",
     URL->scheme, URL->host, URL->port);

 fprintf(stderr, "Login: ");
 if (fgets(URL->user, sizeof URL->user, stdin) == ((void*)0))
  return (-1);
 for (i = strlen(URL->user); i >= 0; --i)
  if (URL->user[i] == '\r' || URL->user[i] == '\n')
   URL->user[i] = '\0';

 fprintf(stderr, "Password: ");
 if (tcgetattr(STDIN_FILENO, &tios) == 0) {
  saved_flags = tios.c_lflag;
  tios.c_lflag &= ~ECHO;
  tios.c_lflag |= ECHONL|ICANON;
  tcsetattr(STDIN_FILENO, TCSAFLUSH|TCSASOFT, &tios);
  nopwd = (fgets(URL->pwd, sizeof URL->pwd, stdin) == ((void*)0));
  tios.c_lflag = saved_flags;
  tcsetattr(STDIN_FILENO, TCSANOW|TCSASOFT, &tios);
 } else {
  nopwd = (fgets(URL->pwd, sizeof URL->pwd, stdin) == ((void*)0));
 }
 if (nopwd)
  return (-1);
 for (i = strlen(URL->pwd); i >= 0; --i)
  if (URL->pwd[i] == '\r' || URL->pwd[i] == '\n')
   URL->pwd[i] = '\0';

 return (0);
}
