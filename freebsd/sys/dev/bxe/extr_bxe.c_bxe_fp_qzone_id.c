
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bxe_fastpath {scalar_t__ cl_id; int sc; } ;


 scalar_t__ CHIP_IS_E1x (int ) ;
 int ETH_MAX_RX_CLIENTS_E1H ;
 int SC_PORT (int ) ;

__attribute__((used)) static inline uint8_t
bxe_fp_qzone_id(struct bxe_fastpath *fp)
{
    if (CHIP_IS_E1x(fp->sc)) {
        return (fp->cl_id + SC_PORT(fp->sc) * ETH_MAX_RX_CLIENTS_E1H);
    } else {
        return (fp->cl_id);
    }
}
