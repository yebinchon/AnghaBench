
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct aldap {TYPE_1__ ber; } ;


 int ber_free (TYPE_1__*) ;
 int close (int ) ;
 int free (struct aldap*) ;

int
aldap_close(struct aldap *al)
{
 if (close(al->ber.fd) == -1)
  return (-1);

 ber_free(&al->ber);
 free(al);

 return (0);
}
