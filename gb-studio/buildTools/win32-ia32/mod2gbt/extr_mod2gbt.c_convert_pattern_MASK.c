#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/ ** info; } ;
typedef  TYPE_1__ _pattern_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* label_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(_pattern_t * pattern, u8 number)
{
    FUNC7("const unsigned char ","");
    FUNC7(label_name,label_name);
    FUNC6(number);
    FUNC7("[] = {\n",":\n");

    int step;
    for(step = 0; step < 64; step ++)
    {
        FUNC7("  ","  DB  ");

        u8 data[4]; //packed data
        u8 samplenum; u16 sampleperiod; u8 effectnum, effectparams; //unpacked data

        u8 note_index;

        //Channel 1
        FUNC4(data,pattern->info[step][0],4);
        FUNC8(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = FUNC5(sampleperiod,number,step,1);

        FUNC0(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);
        FUNC7(", ",", ");

        //Channel 2
        FUNC4(data,pattern->info[step][1],4);
        FUNC8(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = FUNC5(sampleperiod,number,step,2);

        FUNC1(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);
        FUNC7(", ",", ");

        //Channel 3
        FUNC4(data,pattern->info[step][2],4);
        FUNC8(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = FUNC5(sampleperiod,number,step,3);

        FUNC2(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);
        FUNC7(", ",", ");

        //Channel 4
        FUNC4(data,pattern->info[step][3],4);
        FUNC8(data,&samplenum,&sampleperiod,&effectnum,&effectparams);
        note_index = FUNC5(sampleperiod,number,step,4);

        FUNC3(number,step,
                         note_index,samplenum,sampleperiod,effectnum,effectparams);

        if(step == 63) FUNC7("\n","\n");
        else FUNC7(",\n","\n");
    }

    FUNC7("};\n\n","\n\n");
}