
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int abs (int) ;
 scalar_t__* mod_period ;
 int printf (char*,int,int,int) ;

u8 mod_get_index_from_period(u16 period, int pattern, int step, int channel)
{
    if(period > 0)
    {
        if(period < mod_period[(6*12)-1])
            if(channel != 4)
                    printf("\nPattern %d, Step %d, Channel %d. Note too high!\n",pattern,step,channel);

        if(period > mod_period[0])
            if(channel != 4)
                printf("\nPattern %d, Step %d, Channel %d. Note too low!\n",pattern,step,channel);
    }
    else
    {
        return -1;
    }

    int i;
    for( i = 0; i < 6*12; i++)
        if(period == mod_period[i])
            return i;



    u16 nearest_value = 0xFFFF;
    u8 nearest_index = 0;
    for( i = 0; i < 6*12; i++)
    {
        int test_distance = abs( ((int)period) - ((int)mod_period[i]) );
        int nearest_distance = abs( ((int)period) - nearest_value );

        if(test_distance < nearest_distance)
        {
            nearest_value = mod_period[i];
            nearest_index = i;
        }
    }
    return nearest_index;
}
