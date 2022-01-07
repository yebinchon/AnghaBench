
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int V_MODE_MAP_SIZE ;
 int V_MODE_PARAM_SIZE ;

__attribute__((used)) static void
map_mode_table(u_char *map[], u_char *table, int max)
{
    int i;

    for(i = 0; i < max; ++i)
 map[i] = table + i*V_MODE_PARAM_SIZE;
    for(; i < V_MODE_MAP_SIZE; ++i)
 map[i] = ((void*)0);
}
