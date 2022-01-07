
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int errx (int ,char*) ;

__attribute__((used)) static void
usage(void)
{

 errx(EX_USAGE,
      "usage: fdread [-qr] [-d device] [-f fillbyte]\n"
      "       fdread [-d device] -I numids [-t trackno]");
}
