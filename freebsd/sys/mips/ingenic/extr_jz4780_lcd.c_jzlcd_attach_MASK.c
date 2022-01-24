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
struct lcd_frame_descriptor {int dummy; } ;
struct jzlcd_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * clk_pix; int /*<<< orphan*/  fdesc_tag; int /*<<< orphan*/  fdesc_map; int /*<<< orphan*/  fdesc; int /*<<< orphan*/  hdmi_evh; int /*<<< orphan*/  fdesc_paddr; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_DMA_NOCACHE ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jzlcd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct jzlcd_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hdmi_event ; 
 int /*<<< orphan*/  jzlcd_dmamap_cb ; 
 int /*<<< orphan*/  jzlcd_hdmi_event ; 
 int /*<<< orphan*/  jzlcd_spec ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct jzlcd_softc *sc;
	int error;

	sc = FUNC12(dev);

	sc->dev = dev;

	if (FUNC1(dev, jzlcd_spec, sc->res)) {
		FUNC13(dev, "cannot allocate resources for device\n");
		goto failed;
	}

	if (FUNC10(dev, 0, "lcd_clk", &sc->clk) != 0 ||
	    FUNC10(dev, 0, "lcd_pixclk", &sc->clk_pix) != 0) {
		FUNC13(dev, "cannot get clocks\n");
		goto failed;
	}
	if (FUNC9(sc->clk) != 0 || FUNC9(sc->clk_pix) != 0) {
		FUNC13(dev, "cannot enable clocks\n");
		goto failed;
	}

	error = FUNC2(
	    FUNC7(dev),
	    sizeof(struct lcd_frame_descriptor), 0,
	    BUS_SPACE_MAXADDR_32BIT,
	    BUS_SPACE_MAXADDR,
	    NULL, NULL,
	    sizeof(struct lcd_frame_descriptor) * 2, 1,
	    sizeof(struct lcd_frame_descriptor) * 2,
	    0,
	    NULL, NULL,
	    &sc->fdesc_tag);
	if (error != 0) {
		FUNC13(dev, "cannot create bus dma tag\n");
		goto failed;
	}

	error = FUNC5(sc->fdesc_tag, (void **)&sc->fdesc,
	    BUS_DMA_NOCACHE | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->fdesc_map);
	if (error != 0) {
		FUNC13(dev, "cannot allocate dma descriptor\n");
		goto dmaalloc_failed;
	}

	error = FUNC4(sc->fdesc_tag, sc->fdesc_map, sc->fdesc,
	    sizeof(struct lcd_frame_descriptor) * 2, jzlcd_dmamap_cb,
	    &sc->fdesc_paddr, 0);
	if (error != 0) {
		FUNC13(dev, "cannot load dma map\n");
		goto dmaload_failed;
	}

	sc->hdmi_evh = FUNC0(hdmi_event,
	    jzlcd_hdmi_event, sc, 0);

	return (0);

dmaload_failed:
	FUNC6(sc->fdesc_tag, sc->fdesc, sc->fdesc_map);
dmaalloc_failed:
	FUNC3(sc->fdesc_tag);
failed:
	if (sc->clk_pix != NULL)
		FUNC11(sc->clk);
	if (sc->clk != NULL)
		FUNC11(sc->clk);
	if (sc->res != NULL)
		FUNC8(dev, jzlcd_spec, sc->res);

	return (ENXIO);
}