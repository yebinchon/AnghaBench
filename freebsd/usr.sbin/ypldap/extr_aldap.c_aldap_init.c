
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct aldap {TYPE_1__ ber; } ;


 struct aldap* calloc (int,int) ;

struct aldap *
aldap_init(int fd)
{
 struct aldap *a;

 if ((a = calloc(1, sizeof(*a))) == ((void*)0))
  return ((void*)0);
 a->ber.fd = fd;

 return a;
}
