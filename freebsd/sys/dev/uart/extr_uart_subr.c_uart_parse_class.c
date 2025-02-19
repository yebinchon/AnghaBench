
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uart_class {int dummy; } ;


 size_t nitems (struct uart_class**) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 struct uart_class** uart_classes ;
 char* uart_getname (struct uart_class*) ;

__attribute__((used)) static struct uart_class *
uart_parse_class(struct uart_class *class, const char **p)
{
 struct uart_class *uc;
 const char *nm;
 size_t len;
 u_int i;

 for (i = 0; i < nitems(uart_classes); i++) {
  uc = uart_classes[i];
  nm = uart_getname(uc);
  if (nm == ((void*)0) || *nm == '\0')
   continue;
  len = strlen(nm);
  if (strncmp(nm, *p, len) == 0) {
   *p += len;
   return (uc);
  }
 }
 return (class);
}
