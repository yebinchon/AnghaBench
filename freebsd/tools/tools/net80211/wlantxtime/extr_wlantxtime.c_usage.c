
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *progname)
{
 fprintf(stderr, "usage: %s [-a] [-l framelen] [-m mode] [-r rate] [-s]\n",
     progname);
 fprintf(stderr, "-a             display calculations for all possible rates\n");
 fprintf(stderr, "-l framelen    length in bytes of 802.11 payload (default 1536)\n");
 fprintf(stderr, "-m 11a         calculate for 11a channel\n");
 fprintf(stderr, "-m 11b         calculate for 11b channel\n");
 fprintf(stderr, "-m 11g         calculate for 11g channel (default)\n");
 fprintf(stderr, "-m half        calculate for 1/2 width channel\n");
 fprintf(stderr, "-m quarter     calculate for 1/4 width channel\n");
 fprintf(stderr, "-m 108g        calculate for dynamic turbo 11g channel\n");
 fprintf(stderr, "-m sturbo      calculate for static turbo channel\n");
 fprintf(stderr, "-m turbo       calculate for dynamic turbo 11a channel\n");
 fprintf(stderr, "-r rate        IEEE rate code (default 54)\n");
 fprintf(stderr, "-s             short preamble (default long)\n");
 exit(0);
}
