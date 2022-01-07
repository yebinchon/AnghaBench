
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int ** info; } ;
typedef TYPE_1__ _pattern_t ;


 int convert_channel1 (int ,int,int ,int ,int ,int ,int ) ;
 int convert_channel2 (int ,int,int ,int ,int ,int ,int ) ;
 int convert_channel3 (int ,int,int ,int ,int ,int ,int ) ;
 int convert_channel4 (int ,int,int ,int ,int ,int ,int ) ;
 char* label_name ;
 int memcpy (int *,int ,int) ;
 int mod_get_index_from_period (int ,int ,int,int) ;
 int out_write_dec (int ) ;
 int out_write_str (char*,char*) ;
 int unpack_info (int *,int *,int *,int *,int *) ;

void convert_pattern(_pattern_t * pattern, u8 number)
{
    out_write_str("const unsigned char ","");
    out_write_str(label_name,label_name);
    out_write_dec(number);
    out_write_str("[] = {\n",":\n");

    int step;
    for(step = 0; step < 64; step ++)
    {
        out_write_str("  ","  DB  ");

        u8 data[4];
        u8 samplenum; u16 sampleperiod; u8 effectnum, effectparams;

        u8 note_index;


        memcpy(data,pattern->info[step][0],4);
        unpack_info(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = mod_get_index_from_period(sampleperiod,number,step,1);

        convert_channel1(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);
        out_write_str(", ",", ");


        memcpy(data,pattern->info[step][1],4);
        unpack_info(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = mod_get_index_from_period(sampleperiod,number,step,2);

        convert_channel2(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);
        out_write_str(", ",", ");


        memcpy(data,pattern->info[step][2],4);
        unpack_info(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = mod_get_index_from_period(sampleperiod,number,step,3);

        convert_channel3(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);
        out_write_str(", ",", ");


        memcpy(data,pattern->info[step][3],4);
        unpack_info(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = mod_get_index_from_period(sampleperiod,number,step,4);

        convert_channel4(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);

        if(step == 63) out_write_str("\n","\n");
        else out_write_str(",\n","\n");
    }

    out_write_str("};\n\n","\n\n");
}
