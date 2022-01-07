
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ pkthdr_t ;


 int free (TYPE_1__*) ;
 int packet_free (int ) ;

void
pkthdr_free(pkthdr_t *ph)
{

 packet_free(ph->data);
 free(ph);
}
