
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int packetdroppercentage ;
 int printf (char*,int) ;

__attribute__((used)) static void
setpacketdrop(int argc, char *argv[])
{

 if (argc != 1)
  packetdroppercentage = atoi(argv[1]);

 printf("Randomly %d in 100 packets will be dropped\n",
     packetdroppercentage);
}
