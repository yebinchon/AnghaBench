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
typedef  int u_int32_t ;
struct au_info {int* x; int* y; int* z; scalar_t__* routes; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AU_CDC_READY ; 
 int AU_IRQ_ENABLE ; 
 int AU_REG_ADB ; 
 int AU_REG_CODECCHN ; 
 int AU_REG_CODECEN ; 
 int AU_REG_CODECST ; 
 int AU_REG_IRQGLOB ; 
 int AU_REG_RTBASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct au_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct au_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct au_info*,int) ; 
 int FUNC4 (struct au_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct au_info*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct au_info *au)
{
	u_int32_t	i, j;

	FUNC5(au, 0, AU_REG_IRQGLOB, 0xffffffff, 4);
	FUNC0(100000);

	/* init codec */
	/* cold reset */
	for (i=0; i<32; i++) {
		FUNC5(au, 0, AU_REG_CODECCHN+(i<<2), 0, 4);
		FUNC0(10000);
	}
	if (1) {
		FUNC5(au, 0, AU_REG_CODECST, 0x8068, 4);
		FUNC0(10000);
		FUNC5(au, 0, AU_REG_CODECST, 0x00e8, 4);
		FUNC0(10000);
	} else {
		FUNC5(au, 0, AU_REG_CODECST, 0x00a8, 4);
 		FUNC0(100000);
		FUNC5(au, 0, AU_REG_CODECST, 0x80a8, 4);
		FUNC0(100000);
		FUNC5(au, 0, AU_REG_CODECST, 0x80e8, 4);
		FUNC0(100000);
		FUNC5(au, 0, AU_REG_CODECST, 0x80a8, 4);
		FUNC0(100000);
		FUNC5(au, 0, AU_REG_CODECST, 0x00a8, 4);
		FUNC0(100000);
		FUNC5(au, 0, AU_REG_CODECST, 0x00e8, 4);
		FUNC0(100000);
	}

	/* init */
	for (i=0; i<32; i++) {
		FUNC5(au, 0, AU_REG_CODECCHN+(i<<2), 0, 4);
		FUNC0(10000);
	}
	FUNC5(au, 0, AU_REG_CODECST, 0xe8, 4);
	FUNC0(10000);
	FUNC5(au, 0, AU_REG_CODECEN, 0, 4);

	/* setup codec */
	i=j=0;
	while (j<100 && (i & AU_CDC_READY)==0) {
		i=FUNC4(au, 0, AU_REG_CODECST, 4);
		FUNC0(1000);
		j++;
	}
	if (j==100) FUNC6(dev, "codec not ready, status 0x%x\n", i);

   	/* init adb */
	/*au->x5c=0;*/
	for (i=0; i<32;  i++) au->x[i]=i+0x67;
	for (i=0; i<128; i++) au->y[i]=0x7f;
	for (i=0; i<128; i++) au->z[i]=0x1f;
	FUNC5(au, 0, AU_REG_ADB, 0, 4);
	for (i=0; i<124; i++) FUNC5(au, 0, AU_REG_RTBASE+(i<<2), 0xffffffff, 4);

	/* test */
	i=FUNC4(au, 0, 0x107c0, 4);
 	if (i!=0xdeadbeef) FUNC6(dev, "dma check failed: 0x%x\n", i);

	/* install mixer */
	FUNC5(au, 0, AU_REG_IRQGLOB,
	      FUNC4(au, 0, AU_REG_IRQGLOB, 4) | AU_IRQ_ENABLE, 4);
	/* braindead but it's what the oss/linux driver does
	 * for (i=0; i<0x80000000; i++) au_wr(au, 0, i<<2, 0, 4);
	 */
	au->routes[0]=au->routes[1]=au->routes[2]=au->routes[3]=0;
	/*au->x1e4=0;*/

	/* attach channel */
	FUNC1(au, 0x11, 0x48, 0x02);
	FUNC1(au, 0x11, 0x49, 0x03);
	FUNC3(au, 0);
	FUNC3(au, 1);

	for (i=0; i<48; i++) FUNC5(au, 0, 0xf800+(i<<2), 0x20, 4);
	for (i=2; i<6; i++) FUNC5(au, 0, 0xf800+(i<<2), 0, 4);
	FUNC5(au, 0, 0xf8c0, 0x0843, 4);
	for (i=0; i<4; i++) FUNC2(au, i);

	return (0);
}