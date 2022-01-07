
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int w_generation ;
 int w_mtx ;
 scalar_t__ witness_cold ;

__attribute__((used)) static void
witness_increment_graph_generation(void)
{

 if (witness_cold == 0)
  mtx_assert(&w_mtx, MA_OWNED);
 w_generation++;
}
