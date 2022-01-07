
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int main_cons ;
 int xencons_getc (int *) ;
 int xencons_rx (int *) ;

__attribute__((used)) static int
xencons_cngetc(struct consdev *dev)
{

 xencons_rx(&main_cons);

 return (xencons_getc(&main_cons));
}
