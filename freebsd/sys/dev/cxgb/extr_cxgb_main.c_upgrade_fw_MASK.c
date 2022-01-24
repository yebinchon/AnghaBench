#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct firmware {int /*<<< orphan*/  datasize; scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * fw_version; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int FW_FNAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct firmware* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(adapter_t *sc)
{
	const struct firmware *fw;
	int status;
	u32 vers;
	
	if ((fw = FUNC4(FW_FNAME)) == NULL)  {
		FUNC3(sc->dev, "Could not find firmware image %s\n", FW_FNAME);
		return (ENOENT);
	} else
		FUNC3(sc->dev, "installing firmware on card\n");
	status = FUNC8(sc, (const uint8_t *)fw->data, fw->datasize);

	if (status != 0) {
		FUNC3(sc->dev, "failed to install firmware: %d\n",
		    status);
	} else {
		FUNC7(sc, &vers);
		FUNC6(&sc->fw_version[0], sizeof(sc->fw_version), "%d.%d.%d",
		    FUNC0(vers), FUNC2(vers),
		    FUNC1(vers));
	}

	FUNC5(fw, FIRMWARE_UNLOAD);

	return (status);	
}