
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int port_caps32; } ;
struct adapter {TYPE_1__ params; } ;


 int CPLFW4MSG_ENCAP ;
 int FW_PARAM_PFVF (int ) ;
 int PORT_CAPS32 ;
 scalar_t__ t4vf_set_params (struct adapter*,int,int*,int*) ;

__attribute__((used)) static int
set_params__post_init(struct adapter *sc)
{
 uint32_t param, val;


 param = FW_PARAM_PFVF(CPLFW4MSG_ENCAP);
 val = 1;
 (void)t4vf_set_params(sc, 1, &param, &val);


 param = FW_PARAM_PFVF(PORT_CAPS32);
 val = 1;
 if (t4vf_set_params(sc, 1, &param, &val) == 0)
  sc->params.port_caps32 = 1;

 return (0);
}
