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
struct firmware {int /*<<< orphan*/  data; int /*<<< orphan*/  datasize; } ;
struct adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 char* TPSRAM_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct firmware* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 char FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 

__attribute__((used)) static int
FUNC8(struct adapter *adap)
{
	const struct firmware *tpsram;
	int ret;
	char rev, name[32];

	rev = FUNC6(adap);
	FUNC3(name, sizeof(name), TPSRAM_NAME, rev);

	FUNC7(adap);

	tpsram = FUNC1(name);
	if (tpsram == NULL){
		FUNC0(adap->dev, "could not load TP SRAM\n");
		return (EINVAL);
	} else
		FUNC0(adap->dev, "updating TP SRAM\n");
	
	ret = FUNC4(adap, tpsram->data, tpsram->datasize);
	if (ret)
		goto release_tpsram;	

	ret = FUNC5(adap, tpsram->data);
	if (ret)
		FUNC0(adap->dev, "loading protocol SRAM failed\n");

release_tpsram:
	FUNC2(tpsram, FIRMWARE_UNLOAD);
	
	return ret;
}