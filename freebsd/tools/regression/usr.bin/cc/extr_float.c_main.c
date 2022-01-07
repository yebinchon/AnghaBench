
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP_PE ;
 int failures ;
 int fpsetprec (int ) ;
 int printf (char*) ;
 int run_tests () ;

int
main(int argc, char *argv[])
{

 printf("1..26\n");




 run_tests();

 return (failures);
}
