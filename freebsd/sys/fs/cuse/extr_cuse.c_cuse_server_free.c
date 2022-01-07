
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_server {int dummy; } ;


 int cuse_server_do_close (struct cuse_server*) ;
 int cuse_server_unref (struct cuse_server*) ;
 int hz ;
 int pause (char*,int ) ;

__attribute__((used)) static void
cuse_server_free(void *arg)
{
 struct cuse_server *pcs = arg;






 while (cuse_server_do_close(pcs) != 1)
  pause("W", hz);


 cuse_server_unref(pcs);
}
