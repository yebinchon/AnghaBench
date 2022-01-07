
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* IWN_DEFAULT_IF ;
 int printf (char*,...) ;

__attribute__((used)) static void
usage(void)
{
 printf("Usage: iwnstats [-h] [-i ifname]\n");
 printf("    -h:			Help\n");
 printf("    -i <ifname>:	Use ifname (default %s)\n",
     IWN_DEFAULT_IF);
}
