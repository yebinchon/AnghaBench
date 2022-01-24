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
typedef  int /*<<< orphan*/  uint32_t ;
struct firmware {int datasize; int /*<<< orphan*/  data; } ;
struct adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/ * port; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 char* TPEEPROM_NAME ; 
 int TP_SRAM_LEN ; 
 int /*<<< orphan*/  TP_SRAM_OFFSET ; 
 unsigned int TP_VERSION_MAJOR ; 
 int /*<<< orphan*/  TP_VERSION_MICRO ; 
 unsigned int TP_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct firmware* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char FUNC9 (struct adapter*) ; 

__attribute__((used)) static void
FUNC10(struct adapter *adap)
{
	const struct firmware *tpeeprom;

	uint32_t version;
	unsigned int major, minor;
	int ret, len;
	char rev, name[32];

	FUNC8(adap, TP_SRAM_OFFSET, &version);

	major = FUNC0(version);
	minor = FUNC1(version);
	if (major == TP_VERSION_MAJOR  && minor == TP_VERSION_MINOR)
		return; 

	rev = FUNC9(adap);
	FUNC6(name, sizeof(name), TPEEPROM_NAME, rev);

	tpeeprom = FUNC3(name);
	if (tpeeprom == NULL) {
		FUNC2(adap->dev,
			      "could not load TP EEPROM: unable to load %s\n",
			      name);
		return;
	}

	len = tpeeprom->datasize - 4;
	
	ret = FUNC7(adap, tpeeprom->data, tpeeprom->datasize);
	if (ret)
		goto release_tpeeprom;

	if (len != TP_SRAM_LEN) {
		FUNC2(adap->dev,
			      "%s length is wrong len=%d expected=%d\n", name,
			      len, TP_SRAM_LEN);
		return;
	}
	
	ret = FUNC5(&adap->port[0], tpeeprom->data, tpeeprom->datasize,
	    TP_SRAM_OFFSET);
	
	if (!ret) {
		FUNC2(adap->dev,
			"Protocol SRAM image updated in EEPROM to %d.%d.%d\n",
			 TP_VERSION_MAJOR, TP_VERSION_MINOR, TP_VERSION_MICRO);
	} else 
		FUNC2(adap->dev,
			      "Protocol SRAM image update in EEPROM failed\n");

release_tpeeprom:
	FUNC4(tpeeprom, FIRMWARE_UNLOAD);
	
	return;
}