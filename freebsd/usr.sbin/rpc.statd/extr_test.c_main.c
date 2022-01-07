
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sm_stat_res {int dummy; } ;
struct TYPE_3__ {char* my_name; int my_proc; int my_vers; int my_prog; } ;
struct TYPE_4__ {char* mon_name; TYPE_1__ my_id; } ;
struct mon {TYPE_2__ mon_id; } ;
typedef int CLIENT ;


 int SM_PROG ;
 int SM_VERS ;
 int * clnt_create (char*,int ,int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int printf (char*) ;
 struct sm_stat_res* sm_mon_1 (struct mon*,int *) ;
 void* sm_simu_crash_1 (char*,int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv)
{
  CLIENT *cli;
  char dummy;
  void *out;
  struct mon mon;

  if (argc < 2)
  {
    fprintf(stderr, "usage: test <hostname> | crash\n");
    fprintf(stderr, "always talks to statd at localhost\n");
    exit(1);
  }

  printf("Creating client for localhost\n" );
  cli = clnt_create("localhost", SM_PROG, SM_VERS, "udp");
  if (!cli)
  {
    printf("Failed to create client\n");
    exit(1);
  }

  mon.mon_id.mon_name = argv[1];
  mon.mon_id.my_id.my_name = argv[1];
  mon.mon_id.my_id.my_prog = SM_PROG;
  mon.mon_id.my_id.my_vers = SM_VERS;
  mon.mon_id.my_id.my_proc = 1;

  if (strcmp(argv[1], "crash"))
  {

    struct sm_stat_res *res;

    res = sm_mon_1(&mon, cli);
    if (res)
      printf("Success!\n");
    else
      printf("Fail\n");
  }
  else
  {
    out = sm_simu_crash_1(&dummy, cli);
    if (out)
      printf("Success!\n");
    else
      printf("Fail\n");
  }

  return 0;
}
