#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int,int,int,int,int*,int*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void FUNC6(u8 pattern_number, u8 step_number, u8 note_index, u8 samplenum,
                      u16 sampleperiod, u8 effectnum, u8 effectparams)
{
    u8 result[3] = { 0, 0, 0 };
    int command_len = 1; // NOP

    if(note_index > (6*12-1)) //not valid note -> check if any effect
    {
        if((effectnum != 0) || (effectparams != 0))
        {
            //Volume or others?
            if(effectnum == 0xC)
            {
                //Volume
                result[0] = FUNC0(5) | FUNC2(effectparams);
                command_len = 1;
            }
            else
            {
                //Others
                u8 converted_num, converted_params;
                if(FUNC1(pattern_number,step_number,4,
                                    effectnum,effectparams,&converted_num,&converted_params) == 1)
                {
                    result[0] = FUNC0(6) | converted_num;
                    result[1] = converted_params;
                    command_len = 2;
                }
                else
                {
                    if(effectnum != 0)
                    {
                        FUNC5("Invalid command at pattern %d, step %d, channel 4: %01X%02X\n",
                           pattern_number,step_number,effectnum,effectparams);
                    }
                    //NOP
                    result[0] = 0;
                    command_len = 1;
                }
            }
        }
        else
        {
            //NOP
            result[0] = 0;
            command_len = 1;
        }
    }
    else // New note (not a real note...)
    {
        u8 instrument = (samplenum-16) & 0x1F; // Only 0-0xF initially implemented

        u8 converted_num, converted_params;
        if(effectnum == 0xC)
        {
            //Note + Volume
            result[0] = FUNC0(7) | instrument;
            result[1] = FUNC2(effectparams);
            command_len = 2;
        }
        else
        {
            if(FUNC1(pattern_number,step_number,4,
                                effectnum,effectparams,&converted_num,&converted_params) == 1)
            {
                //Note + Effect
                result[0] = FUNC0(7) | instrument;
                result[1] = FUNC0(7) | converted_num;
                result[2] = converted_params;
                command_len = 3;
            }
            else //Note + No effect!! -> NOT GOOD, WE NEED AT LEAST VOLUME CHANGE!!
            {
                FUNC5("Invalid command at pattern %d, step %d, channel 4: %01X%02X\n",
                        pattern_number,step_number,effectnum,effectparams);
                if(effectnum == 0)
                    FUNC5("You need to set the volume when using a new note.\n");
            }
        }
    }

    FUNC4("0x","$");
    FUNC3(result[0]);

    if(command_len > 1)
    {
        FUNC4(",0x",",$");
        FUNC3(result[1]);

        if(command_len > 2)
        {
            FUNC4(",0x",",$");
            FUNC3(result[2]);
        }
    }
}