
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "Usage:\n"
     "posixshmcontrol create [-m <mode>] <path> ...\n"
     "posixshmcontrol rm <path> ...\n"
     "posixshmcontrol ls [-h] [-n]\n"
     "posixshmcontrol dump <path> ...\n"
     "posixshmcontrol stat [-h] [-n] <path> ...\n"
     "posixshmcontrol truncate [-s <newlen>] <path> ...\n");
}
