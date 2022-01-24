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
typedef  size_t UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_HIGHT ; 
 size_t LCD_WIDTH ; 
 int MAX_DTMF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (size_t,char*) ; 
 int /*<<< orphan*/  disp_tile ; 
 int /*<<< orphan*/  FUNC2 (size_t,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(const char *str)
{
	UBYTE no, left_pos;
	UBYTE i, start_ch, end_ch;
	char work[MAX_DTMF];

	FUNC0();

	no = 0;
	while(str[no]){
		no++;
	}

	if(no >= LCD_WIDTH){
		start_ch = no - LCD_WIDTH;
		end_ch = LCD_WIDTH;
	}
	else{
		start_ch = 0;
		end_ch = no;
	}
	for(i = 0;i < end_ch;i++){
		work[i] = str[i+start_ch];
	}
	work[end_ch] = 0x00;

	FUNC1(end_ch, work);

	left_pos = 19 - end_ch;
	FUNC2(left_pos, 2, end_ch, LCD_HIGHT, disp_tile);
}