
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int dummy; } ;


 int ASSP_CONTROL_C ;
 int ASSP_HOST_INT_ENABLE ;
 int ASSP_INT_ENABLE ;
 int HOST_INT_CTRL ;
 int HV_INT_ENABLE ;
 int m3_rd_1 (struct sc_info*,int ) ;
 int m3_wr_1 (struct sc_info*,int ,int) ;
 int m3_wr_2 (struct sc_info*,int ,int) ;

__attribute__((used)) static void
m3_enable_ints(struct sc_info *sc)
{
 u_int8_t data;

 m3_wr_2(sc, HOST_INT_CTRL, ASSP_INT_ENABLE | HV_INT_ENABLE);
 data = m3_rd_1(sc, ASSP_CONTROL_C);
 m3_wr_1(sc, ASSP_CONTROL_C, data | ASSP_HOST_INT_ENABLE);
}
