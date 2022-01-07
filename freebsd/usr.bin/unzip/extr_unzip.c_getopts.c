
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_opt ;
 int L_opt ;
 int Z1_opt ;
 int a_opt ;
 int add_pattern (int *,int ) ;
 int c_opt ;
 int d_arg ;
 int exclude ;
 int f_opt ;
 int getopt (int,char**,char*) ;
 int j_opt ;
 int n_opt ;
 int o_opt ;
 int optarg ;
 int optind ;
 int optreset ;
 int p_opt ;
 int q_opt ;
 int t_opt ;
 int u_opt ;
 int usage () ;
 int v_opt ;
 char* y_str ;
 int zipinfo_mode ;

__attribute__((used)) static int
getopts(int argc, char *argv[])
{
 int opt;

 optreset = optind = 1;
 while ((opt = getopt(argc, argv, "aCcd:fjLlnopqtuvx:yZ1")) != -1)
  switch (opt) {
  case '1':
   Z1_opt = 1;
   break;
  case 'a':
   a_opt = 1;
   break;
  case 'C':
   C_opt = 1;
   break;
  case 'c':
   c_opt = 1;
   break;
  case 'd':
   d_arg = optarg;
   break;
  case 'f':
   f_opt = 1;
   break;
  case 'j':
   j_opt = 1;
   break;
  case 'L':
   L_opt = 1;
   break;
  case 'l':
   if (v_opt == 0)
    v_opt = 1;
   break;
  case 'n':
   n_opt = 1;
   break;
  case 'o':
   o_opt = 1;
   q_opt = 1;
   break;
  case 'p':
   p_opt = 1;
   break;
  case 'q':
   q_opt = 1;
   break;
  case 't':
   t_opt = 1;
   break;
  case 'u':
   u_opt = 1;
   break;
  case 'v':
   v_opt = 2;
   break;
  case 'x':
   add_pattern(&exclude, optarg);
   break;
  case 'y':
   y_str = "  ";
   break;
  case 'Z':
   zipinfo_mode = 1;
   break;
  default:
   usage();
  }

 return (optind);
}
