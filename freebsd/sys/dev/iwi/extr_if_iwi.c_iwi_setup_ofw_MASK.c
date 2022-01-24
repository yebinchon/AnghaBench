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
struct iwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct iwi_fw {char const* data; int size; int /*<<< orphan*/  name; struct firmware* fp; } ;
struct iwi_firmware_ohdr {int /*<<< orphan*/  version; } ;
struct firmware {int datasize; int /*<<< orphan*/  name; scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWI_FW_REQ_MAJOR ; 
 scalar_t__ IWI_FW_REQ_MINOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct iwi_firmware_ohdr *
FUNC4(struct iwi_softc *sc, struct iwi_fw *fw)
{
	const struct firmware *fp = fw->fp;
	const struct iwi_firmware_ohdr *hdr;

	if (fp->datasize < sizeof (struct iwi_firmware_ohdr)) {
		FUNC2(sc->sc_dev, "image '%s' too small\n", fp->name);
		return NULL;
	}
	hdr = (const struct iwi_firmware_ohdr *)fp->data;
	if ((FUNC0(FUNC3(hdr->version)) != IWI_FW_REQ_MAJOR) ||
	    (FUNC1(FUNC3(hdr->version)) != IWI_FW_REQ_MINOR)) {
		FUNC2(sc->sc_dev, "version for '%s' %d.%d != %d.%d\n",
		    fp->name, FUNC0(FUNC3(hdr->version)),
		    FUNC1(FUNC3(hdr->version)), IWI_FW_REQ_MAJOR,
		    IWI_FW_REQ_MINOR);
		return NULL;
	}
	fw->data = ((const char *) fp->data) + sizeof(struct iwi_firmware_ohdr);
	fw->size = fp->datasize - sizeof(struct iwi_firmware_ohdr);
	fw->name = fp->name;
	return hdr;
}