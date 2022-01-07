
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct twe_softc {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ TWE_Param ;


 int ENOENT ;
 int M_DEVBUF ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* twe_get_param (struct twe_softc*,int,int,int,int *) ;

__attribute__((used)) static int
twe_get_param_1(struct twe_softc *sc, int table_id, int param_id, u_int8_t *result)
{
    TWE_Param *param;

    if ((param = twe_get_param(sc, table_id, param_id, 1, ((void*)0))) == ((void*)0))
 return(ENOENT);
    *result = *(u_int8_t *)param->data;
    free(param, M_DEVBUF);
    return(0);
}
