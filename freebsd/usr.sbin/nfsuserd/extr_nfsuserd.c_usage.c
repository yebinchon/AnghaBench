
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;

__attribute__((used)) static void
usage(void)
{

 errx(1,
     "usage: nfsuserd [-usermax cache_size] [-usertimeout minutes] [-verbose] [-manage-gids] [-domain domain_name] [n]");
}
