
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_random_bytes (int *,int) ;
 int ib_register_client (int *) ;
 int ib_unregister_client (int *) ;
 int mcast_init () ;
 int pr_err (char*) ;
 int sa_client ;
 int tid ;

int ib_sa_init(void)
{
 int ret;

 get_random_bytes(&tid, sizeof tid);

 ret = ib_register_client(&sa_client);
 if (ret) {
  pr_err("Couldn't register ib_sa client\n");
  goto err1;
 }

 ret = mcast_init();
 if (ret) {
  pr_err("Couldn't initialize multicast handling\n");
  goto err2;
 }

 return 0;

err2:
 ib_unregister_client(&sa_client);
err1:
 return ret;
}
