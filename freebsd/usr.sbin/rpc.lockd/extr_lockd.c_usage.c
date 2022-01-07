
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;

void
usage()
{
 errx(1, "usage: rpc.lockd [-d <debuglevel>]"
     " [-g <grace period>] [-h <bindip>] [-p <port>]");
}
