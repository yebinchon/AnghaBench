
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int dummy; } ;


 int CONSOLEIO_read ;
 int HYPERVISOR_console_io (int ,unsigned int,char*) ;
 int xencons_lock_assert (struct xencons_priv*) ;

__attribute__((used)) static int
xencons_read_hypervisor(struct xencons_priv *cons, char *buffer,
    unsigned int size)
{

 xencons_lock_assert(cons);

 return (HYPERVISOR_console_io(CONSOLEIO_read, size, buffer));
}
