
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int pmap_cold_map (int ,int ,int ) ;

__attribute__((used)) static void
pmap_cold_mapident(u_long pa, u_long cnt)
{

 pmap_cold_map(pa, pa, cnt);
}
