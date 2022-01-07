
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bxe_fastpath {int rx_cq_cons; int * rx_cq_cons_sb; } ;


 int RCQ_MAX ;
 int le16toh (int ) ;
 int mb () ;

__attribute__((used)) static inline int
bxe_has_rx_work(struct bxe_fastpath *fp)
{
    uint16_t rx_cq_cons_sb;

    mb();
    rx_cq_cons_sb = le16toh(*fp->rx_cq_cons_sb);
    if ((rx_cq_cons_sb & RCQ_MAX) == RCQ_MAX)
        rx_cq_cons_sb++;
    return (fp->rx_cq_cons != rx_cq_cons_sb);
}
