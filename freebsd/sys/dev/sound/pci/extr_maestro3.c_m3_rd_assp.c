
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct sc_info {int dummy; } ;


 int DSP_PORT_MEMORY_DATA ;
 int DSP_PORT_MEMORY_INDEX ;
 int DSP_PORT_MEMORY_TYPE ;
 int MEMTYPE_MASK ;
 int m3_rd_2 (struct sc_info*,int ) ;
 int m3_wr_2 (struct sc_info*,int ,int) ;

__attribute__((used)) static __inline u_int16_t
m3_rd_assp(struct sc_info *sc, u_int16_t region, u_int16_t index)
{
        m3_wr_2(sc, DSP_PORT_MEMORY_TYPE, region & MEMTYPE_MASK);
        m3_wr_2(sc, DSP_PORT_MEMORY_INDEX, index);
        return m3_rd_2(sc, DSP_PORT_MEMORY_DATA);
}
