
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\tgpioctl [-f ctldev] -l [-v]\n");
 fprintf(stderr, "\tgpioctl [-f ctldev] [-pN] -t pin\n");
 fprintf(stderr, "\tgpioctl [-f ctldev] [-pN] -c pin flag ...\n");
 fprintf(stderr, "\tgpioctl [-f ctldev] [-pN] -n pin pin-name\n");
 fprintf(stderr, "\tgpioctl [-f ctldev] [-pN] pin [0|1]\n");
 exit(1);
}
