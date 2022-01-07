
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int close (int) ;
 int * entrustbuf ;
 int free (int *) ;
 int sd ;

void
priv_netinet_ipsec_policy_entrust_cleanup(int asroot, int injail,
    struct test *test)
{

 if (entrustbuf != ((void*)0)) {
  free(entrustbuf);
  entrustbuf = ((void*)0);
 }
 if (sd >= 0) {
  close(sd);
  sd = -1;
 }
}
