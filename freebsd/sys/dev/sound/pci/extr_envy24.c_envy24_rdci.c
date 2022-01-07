
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int ENVY24_CCS_DATA ;
 int ENVY24_CCS_INDEX ;
 int envy24_rdcs (struct sc_info*,int ,int) ;
 int envy24_wrcs (struct sc_info*,int ,int,int) ;

__attribute__((used)) static u_int32_t
envy24_rdci(struct sc_info *sc, int regno)
{
 envy24_wrcs(sc, ENVY24_CCS_INDEX, regno, 1);
 return envy24_rdcs(sc, ENVY24_CCS_DATA, 1);
}
