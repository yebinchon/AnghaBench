
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct passwd {char* pw_name; } ;
typedef int hostname ;
struct TYPE_5__ {void* sa_family; } ;
struct TYPE_4__ {void* sa_family; } ;
struct TYPE_6__ {int r_tty; int r_name; int l_name; int id_num; TYPE_2__ ctl_addr; TYPE_1__ addr; int vers; } ;


 int AF_INET ;
 int MAXHOSTNAMELEN ;
 int NAME_SIZE ;
 int TALK_VERSION ;
 int TTY_SIZE ;
 int errx (int,char*) ;
 int get_addrs (char const*,char const*) ;
 int gethostname (char*,int) ;
 char* getlogin () ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int htonl (int ) ;
 void* htons (int ) ;
 int isatty (int ) ;
 TYPE_3__ msg ;
 int strcspn (char*,char*) ;
 int strlcpy (int ,char const*,int ) ;
 int usage () ;

void
get_names(int argc, char *argv[])
{
 char hostname[MAXHOSTNAMELEN];
 char *his_name, *my_name;
 const char *my_machine_name, *his_machine_name;
 const char *his_tty;
 char *cp;

 if (argc < 2 )
  usage();
 if (!isatty(0))
  errx(1, "standard input must be a tty, not a pipe or a file");
 if ((my_name = getlogin()) == ((void*)0)) {
  struct passwd *pw;

  if ((pw = getpwuid(getuid())) == ((void*)0))
   errx(1, "you don't exist. Go away");
  my_name = pw->pw_name;
 }
 gethostname(hostname, sizeof (hostname));
 my_machine_name = hostname;

 cp = argv[1] + strcspn(argv[1], "@:!");
 if (*cp == '\0') {

  his_name = argv[1];
  my_machine_name = his_machine_name = "localhost";
 } else {
  if (*cp++ == '@') {

   his_name = argv[1];
   his_machine_name = cp;
  } else {

   his_name = cp;
   his_machine_name = argv[1];
  }
  *--cp = '\0';
 }
 if (argc > 2)
  his_tty = argv[2];
 else
  his_tty = "";
 get_addrs(my_machine_name, his_machine_name);



 msg.vers = TALK_VERSION;
 msg.addr.sa_family = htons(AF_INET);
 msg.ctl_addr.sa_family = htons(AF_INET);
 msg.id_num = htonl(0);
 strlcpy(msg.l_name, my_name, NAME_SIZE);
 strlcpy(msg.r_name, his_name, NAME_SIZE);
 strlcpy(msg.r_tty, his_tty, TTY_SIZE);
}
