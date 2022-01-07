
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bxe_fastpath {int last_max_sge; } ;


 scalar_t__ SUB_S16 (int ,int ) ;

__attribute__((used)) static inline void
bxe_update_last_max_sge(struct bxe_fastpath *fp,
                        uint16_t idx)
{
    uint16_t last_max = fp->last_max_sge;

    if (SUB_S16(idx, last_max) > 0) {
        fp->last_max_sge = idx;
    }
}
