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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int  FUNC3(uint8_t *data, int length)
{
	int elemlen;
	int type;
	int i;

	while(length>0){
		elemlen = *data;
		data++;
		length --;
		elemlen--;
		if(length<=0)
			break;
		type = *data;
		data++;
		length --;
		elemlen--;
		if(length<=0)
			break;
		switch(type){
		case 0x1:
			FUNC1("NDflag:%x\n", *data);
			break;
		case 0x9:
			FUNC1("LocalName:");
			for(i = 0; i < FUNC0(length,elemlen); i++){
				FUNC2(data[i]);
			}
			FUNC1("\n");
			break;
		default:
			FUNC1("Type%d:", type);
			for(i=0; i < FUNC0(length,elemlen); i++){
				FUNC1("%02x ",data[i]);
			}
			FUNC1("\n");
			break;
		}
		data += elemlen;
		length -= elemlen;
	}
	return 0;
}