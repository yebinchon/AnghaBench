
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 char* getprogname () ;
 int printf (char*,...) ;

__attribute__((used)) static void
usage(void)
{

 printf("Usage: %s [-c period] [-EefmVxXz] channel-number num-txns [<bufsize> "
     "[<chain-len> [duration]]]\n", getprogname());
 printf("       %s -r [-c period] [-vVwz] channel-number address [<bufsize>]\n\n",
     getprogname());
 printf("           -c period - Enable interrupt coalescing (us) (default: 0)\n");
 printf("           -E        - Test contiguous 8k copy.\n");
 printf("           -e        - Test non-contiguous 8k copy.\n");
 printf("           -f        - Test block fill.\n");
 printf("           -m        - Test memcpy instead of DMA.\n");
 printf("           -r        - Issue DMA to or from a specific address.\n");
 printf("           -V        - Enable verification\n");
 printf("           -v        - <address> is a kernel virtual address\n");
 printf("           -w        - Write to the specified address\n");
 printf("           -x        - Test DMA CRC.\n");
 printf("           -X        - Test DMA CRC copy.\n");
 printf("           -z        - Zero device stats before test\n");
 exit(EX_USAGE);
}
