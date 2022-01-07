
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_in_progress; } ;
typedef TYPE_1__ hv_kvp_sc ;



__attribute__((used)) static int
hv_kvp_req_in_progress(hv_kvp_sc *sc)
{

 return (sc->req_in_progress);
}
