
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int * ioq_vector; } ;


 int M_DEVBUF ;
 int free (int *,int ) ;

void
lio_free_ioq_vector(struct octeon_device *oct)
{

 free(oct->ioq_vector, M_DEVBUF);
 oct->ioq_vector = ((void*)0);
}
