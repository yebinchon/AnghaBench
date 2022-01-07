
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "client: tcpp"
     " -c remoteIP"
     " [-h]"
     " [-P]"
     " [-M localIPcount]"
     " [-l localIPbase]"
     "\n\t"
     " [-b bytespertcp]"
     " [-m maxtcpsatonce]"
     " [-p procs]"
     " [-t tcpsperproc]"
     "\n"
     "\t"
     " [-r baseport]"
     "\n");

 fprintf(stderr, "server: tcpp"
     " -s"
     " [-P]"
     " [-l localIPbase]"
     " [-m maxtcpsatonce]"
     " [-p procs]"
     "\n"
     "\t"
     " [-r baseport]"
     "\n");
 exit(EX_USAGE);
}
