
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc5 {int adapter; } ;


 int A_MC5_DB_CONFIG ;
 int F_DBGIEN ;
 int F_MBUSEN ;
 int F_PRTYEN ;
 int t3_set_reg_field (int ,int ,int,int ) ;

__attribute__((used)) static inline void mc5_dbgi_mode_enable(const struct mc5 *mc5)
{
 t3_set_reg_field(mc5->adapter, A_MC5_DB_CONFIG, F_PRTYEN | F_MBUSEN,
    F_DBGIEN);
}
