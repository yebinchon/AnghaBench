
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int ENVY24_CCS_DATA ;
 int ENVY24_CCS_INDEX ;
 int envy24_wrcs (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
envy24_wrci(struct sc_info *sc, int regno, u_int32_t data)
{
 envy24_wrcs(sc, ENVY24_CCS_INDEX, regno, 1);
 envy24_wrcs(sc, ENVY24_CCS_DATA, data, 1);
}
