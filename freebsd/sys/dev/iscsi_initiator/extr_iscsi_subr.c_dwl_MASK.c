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
typedef  int u_char ;
typedef  int /*<<< orphan*/  isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(isc_session_t *sp, int lun, u_char *lp)
{
     FUNC0(8);
     FUNC1(4, "lun=%d", lun);
     /*
      | mapping LUN to iSCSI LUN
      | check the SAM-2 specs
      | hint: maxLUNS is a small number, cam's LUN is 32bits
      | iSCSI is 64bits, scsi is ?
      */
     // XXX: check if this will pass the endian test
     if(lun < 256) {
	  lp[0] = 0;
	  lp[1] = lun;
     } else
     if(lun < 16384) {
	  lp[0] = (1 << 5) | ((lun >> 8) & 0x3f);
	  lp[1] = lun & 0xff;
     } 
     else {
	  FUNC2("lun %d: is unsupported!", lun);
	  return -1;
     }

     return 0;
}