
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a_flag ;
 int d_flag ;
 int everything ;
 int exit (int ) ;
 void* g_args ;
 int get_groups () ;
 int get_users () ;
 int getopt (int,char* const*,char*) ;
 void* l_args ;
 int list_users () ;
 int m_flag ;
 int o_flag ;
 void* optarg ;
 scalar_t__ optind ;
 int p_flag ;
 int s_flag ;
 int select_users () ;
 int sort_users () ;
 int t_flag ;
 int u_flag ;
 int usage () ;
 int x_flag ;

int
main(int argc, char * const argv[])
{
 int o;

 while ((o = getopt(argc, argv, "adg:l:mopstux")) != -1)
  switch (o) {
  case 'a':
   a_flag = 1;
   break;
  case 'd':
   everything = 0;
   d_flag = 1;
   break;
  case 'g':
   everything = 0;
   g_args = optarg;
   break;
  case 'l':
   everything = 0;
   l_args = optarg;
   break;
  case 'm':
   m_flag = 1;
   break;
  case 'o':
   o_flag = 1;
   break;
  case 'p':
   everything = 0;
   p_flag = 1;
   break;
  case 's':
   everything = 0;
   s_flag = 1;
   break;
  case 't':
   t_flag = 1;
   break;
  case 'u':
   everything = 0;
   u_flag = 1;
   break;
  case 'x':
   x_flag = 1;
   break;
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc > 0)
  usage();

 get_groups();
 get_users();
 select_users();
 sort_users();
 list_users();
 exit(0);
}
