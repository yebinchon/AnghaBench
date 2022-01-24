#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
typedef  int uint16_t ;
struct firmware {int datasize; scalar_t__ data; } ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;
struct bwi_fwhdr {int /*<<< orphan*/  fw_iv_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  val16; int /*<<< orphan*/  val32; } ;
struct bwi_fw_iv {TYPE_1__ iv_val; int /*<<< orphan*/  iv_ofs; } ;

/* Variables and functions */
 int BWI_DBG_FIRMWARE ; 
 int BWI_DBG_INIT ; 
 int BWI_DBG_MAC ; 
 int BWI_FW_IV_IS_32BIT ; 
 int /*<<< orphan*/  BWI_FW_IV_OFS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int,char*,int) ; 
 int EINVAL ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC7(struct bwi_mac *mac, const struct firmware *fw)
{
	struct bwi_softc *sc = mac->mac_sc;
	const struct bwi_fwhdr *hdr;
	const struct bwi_fw_iv *iv;
	int n, i, iv_img_size;

	/* Get the number of IVs in the IV image */
	hdr = (const struct bwi_fwhdr *)fw->data;
	n = FUNC5(hdr->fw_iv_cnt);
	FUNC2(sc, BWI_DBG_MAC | BWI_DBG_INIT | BWI_DBG_FIRMWARE,
		"IV count %d\n", n);

	/* Calculate the IV image size, for later sanity check */
	iv_img_size = fw->datasize - sizeof(*hdr);

	/* Locate the first IV */
	iv = (const struct bwi_fw_iv *)
	     ((const uint8_t *)fw->data + sizeof(*hdr));

	for (i = 0; i < n; ++i) {
		uint16_t iv_ofs, ofs;
		int sz = 0;

		if (iv_img_size < sizeof(iv->iv_ofs)) {
			FUNC6(sc->sc_dev, "invalid IV image, ofs\n");
			return EINVAL;
		}
		iv_img_size -= sizeof(iv->iv_ofs);
		sz += sizeof(iv->iv_ofs);

		iv_ofs = FUNC4(iv->iv_ofs);

		ofs = FUNC3(iv_ofs, BWI_FW_IV_OFS_MASK);
		if (ofs >= 0x1000) {
			FUNC6(sc->sc_dev, "invalid ofs (0x%04x) "
				  "for %dth iv\n", ofs, i);
			return EINVAL;
		}

		if (iv_ofs & BWI_FW_IV_IS_32BIT) {
			uint32_t val32;

			if (iv_img_size < sizeof(iv->iv_val.val32)) {
				FUNC6(sc->sc_dev,
				    "invalid IV image, val32\n");
				return EINVAL;
			}
			iv_img_size -= sizeof(iv->iv_val.val32);
			sz += sizeof(iv->iv_val.val32);

			val32 = FUNC5(iv->iv_val.val32);
			FUNC1(sc, ofs, val32);
		} else {
			uint16_t val16;

			if (iv_img_size < sizeof(iv->iv_val.val16)) {
				FUNC6(sc->sc_dev,
				    "invalid IV image, val16\n");
				return EINVAL;
			}
			iv_img_size -= sizeof(iv->iv_val.val16);
			sz += sizeof(iv->iv_val.val16);

			val16 = FUNC4(iv->iv_val.val16);
			FUNC0(sc, ofs, val16);
		}

		iv = (const struct bwi_fw_iv *)((const uint8_t *)iv + sz);
	}

	if (iv_img_size != 0) {
		FUNC6(sc->sc_dev, "invalid IV image, size left %d\n",
		    iv_img_size);
		return EINVAL;
	}
	return 0;
}