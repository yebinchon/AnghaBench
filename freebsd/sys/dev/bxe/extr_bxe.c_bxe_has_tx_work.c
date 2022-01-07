
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_fastpath {int dummy; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bxe_tx_queue_has_work (struct bxe_fastpath*) ;

__attribute__((used)) static inline uint8_t
bxe_has_tx_work(struct bxe_fastpath *fp)
{

    return (bxe_tx_queue_has_work(fp)) ? TRUE : FALSE;
}
