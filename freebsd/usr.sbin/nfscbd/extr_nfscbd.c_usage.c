
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USAGE ;
 int errx (int,char*,int ) ;

__attribute__((used)) static void
usage(void)
{

 errx(1, "usage: nfscbd %s", USAGE);
}
