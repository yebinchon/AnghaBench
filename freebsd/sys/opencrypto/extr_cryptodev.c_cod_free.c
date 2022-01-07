
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* uio_iov; } ;
struct cryptop_data {TYPE_2__ uio; } ;
struct TYPE_3__ {struct cryptop_data* iov_base; } ;


 int M_XDATA ;
 int free (struct cryptop_data*,int ) ;

__attribute__((used)) static void
cod_free(struct cryptop_data *cod)
{

 free(cod->uio.uio_iov[0].iov_base, M_XDATA);
 free(cod, M_XDATA);
}
