
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int print_eaddr () ;
 int read_block () ;

__attribute__((used)) static void
list(void)
{

 read_block();
 print_eaddr();
 exit(0);
}
