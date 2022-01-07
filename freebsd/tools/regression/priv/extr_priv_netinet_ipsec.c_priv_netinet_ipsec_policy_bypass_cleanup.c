
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int * bypassbuf ;
 int close (int) ;
 int free (int *) ;
 int sd ;

void
priv_netinet_ipsec_policy_bypass_cleanup(int asroot, int injail,
    struct test *test)
{

 if (bypassbuf != ((void*)0)) {
  free(bypassbuf);
  bypassbuf = ((void*)0);
 }
 if (sd >= 0) {
  close(sd);
  sd = -1;
 }
}
