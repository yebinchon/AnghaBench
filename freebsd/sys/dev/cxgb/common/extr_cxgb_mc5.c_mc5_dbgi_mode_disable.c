
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc5 {int parity_enabled; int adapter; } ;


 int A_MC5_DB_CONFIG ;
 int F_DBGIEN ;
 int F_MBUSEN ;
 int V_PRTYEN (int ) ;
 int t3_set_reg_field (int ,int ,int ,int) ;

__attribute__((used)) static void mc5_dbgi_mode_disable(const struct mc5 *mc5)
{
 t3_set_reg_field(mc5->adapter, A_MC5_DB_CONFIG, F_DBGIEN,
    V_PRTYEN(mc5->parity_enabled) | F_MBUSEN);
}
