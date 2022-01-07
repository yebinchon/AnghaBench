
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int dummy; } ;


 int CONSOLEIO_write ;
 int HYPERVISOR_console_io (int ,unsigned int,char const*) ;

__attribute__((used)) static int
xencons_write_hypervisor(struct xencons_priv *cons, const char *buffer,
    unsigned int size)
{

 HYPERVISOR_console_io(CONSOLEIO_write, size, buffer);

 return (size);
}
