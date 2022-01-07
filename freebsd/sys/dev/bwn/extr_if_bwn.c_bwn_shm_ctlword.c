
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_SHM_CONTROL ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_shm_ctlword(struct bwn_mac *mac, uint16_t way,
    uint16_t offset)
{
 uint32_t control;

 control = way;
 control <<= 16;
 control |= offset;
 BWN_WRITE_4(mac, BWN_SHM_CONTROL, control);
}
