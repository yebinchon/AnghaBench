
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int V_MODE_MAP_SIZE ;
 int map_mode_num (int) ;
 int ** mode_map ;

__attribute__((used)) static u_char
*get_mode_param(int mode)
{

    if (mode >= V_MODE_MAP_SIZE)
 mode = map_mode_num(mode);

    if ((mode >= 0) && (mode < V_MODE_MAP_SIZE))
 return mode_map[mode];
    else
 return ((void*)0);
}
