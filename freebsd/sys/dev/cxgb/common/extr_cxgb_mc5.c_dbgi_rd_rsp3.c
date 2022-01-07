
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_MC5_DB_DBGI_RSP_DATA0 ;
 int A_MC5_DB_DBGI_RSP_DATA1 ;
 int A_MC5_DB_DBGI_RSP_DATA2 ;
 int t3_read_reg (int *,int ) ;

__attribute__((used)) static inline void dbgi_rd_rsp3(adapter_t *adapter, u32 *v1, u32 *v2, u32 *v3)
{
 *v1 = t3_read_reg(adapter, A_MC5_DB_DBGI_RSP_DATA0);
 *v2 = t3_read_reg(adapter, A_MC5_DB_DBGI_RSP_DATA1);
 *v3 = t3_read_reg(adapter, A_MC5_DB_DBGI_RSP_DATA2);
}
