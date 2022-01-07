
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int show_adapter (int,char**) ;
 int show_devices (int,char**) ;
 int show_enclosures (int,char**) ;
 int show_expanders (int,char**) ;

__attribute__((used)) static int
show_all(int ac, char **av)
{
 int error;

 printf("Adapter:\n");
 error = show_adapter(ac, av);
 printf("Devices:\n");
 error = show_devices(ac, av);
 printf("Enclosures:\n");
 error = show_enclosures(ac, av);
 printf("Expanders:\n");
 error = show_expanders(ac, av);
 return (error);
}
