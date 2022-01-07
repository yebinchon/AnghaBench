
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage() {
 (void)fprintf(stderr, "%s\n",
     "usage: rpc.umntall [-kv] [-e expire] [-h host] [-p path]");
 exit(1);
}
