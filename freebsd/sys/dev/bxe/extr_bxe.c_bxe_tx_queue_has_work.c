
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bxe_fastpath {scalar_t__ tx_pkt_cons; int * tx_cons_sb; } ;


 scalar_t__ le16toh (int ) ;
 int mb () ;

__attribute__((used)) static inline int
bxe_tx_queue_has_work(struct bxe_fastpath *fp)
{
    uint16_t hw_cons;

    mb();
    hw_cons = le16toh(*fp->tx_cons_sb);
    return (hw_cons != fp->tx_pkt_cons);
}
