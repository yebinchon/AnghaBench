
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test { ____Placeholder_test } test ;
typedef enum sort { ____Placeholder_sort } sort ;


 int INVALID_ALG ;
 int INVALID_TEST ;
 int NARGS ;
 int atoi (char*) ;
 int parse_alg (char*) ;
 int parse_test (char*) ;
 int pow (int,int) ;
 int run_bench (int,int,int,int) ;
 int usage (char const*) ;

int
main(int argc, char *argv[])
{
 const char *progname = argv[0];
 int runs, elts;
 if (argc != NARGS)
  usage(progname);

 enum sort s = parse_alg(argv[1]);
 if (s == INVALID_ALG)
  usage(progname);

 enum test t = parse_test(argv[2]);
 if (t == INVALID_TEST)
  usage(progname);

 runs = atoi(argv[3]);
 elts = pow(2, atoi(argv[4]));

 run_bench(s, t, runs, elts);
}
