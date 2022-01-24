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
struct sndcard_func {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  LOGICALID_MIDI 130 
#define  LOGICALID_OPL 129 
#define  LOGICALID_PCM 128 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SCF_MIDI ; 
 int /*<<< orphan*/  SCF_PCM ; 
 int /*<<< orphan*/  SCF_SYNTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sndcard_func*) ; 
 int /*<<< orphan*/  gusc_ids ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct sndcard_func* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	device_t child;
	u_int32_t logical_id;
	char *s;
	struct sndcard_func *func;
	int ret;

	logical_id = FUNC6(dev);
	s = NULL;

	/* Check isapnp ids */
	if (logical_id != 0 && (ret = FUNC0(FUNC2(dev), dev, gusc_ids)) != 0)
		return (ret);
	else {
		if (logical_id == 0)
			return FUNC5(dev);
	}

	switch (logical_id) {
	case LOGICALID_PCM:
		s = "Gravis UltraSound Plug & Play PCM";
		func = FUNC7(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (func == NULL)
			return (ENOMEM);
		func->func = SCF_PCM;
		child = FUNC1(dev, "pcm", -1);
		FUNC4(child, func);
		break;
	case LOGICALID_OPL:
		s = "Gravis UltraSound Plug & Play OPL";
		func = FUNC7(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (func == NULL)
			return (ENOMEM);
		func->func = SCF_SYNTH;
		child = FUNC1(dev, "midi", -1);
		FUNC4(child, func);
		break;
	case LOGICALID_MIDI:
		s = "Gravis UltraSound Plug & Play MIDI";
		func = FUNC7(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (func == NULL)
			return (ENOMEM);
		func->func = SCF_MIDI;
		child = FUNC1(dev, "midi", -1);
		FUNC4(child, func);
		break;
	}

	if (s != NULL) {
		FUNC3(dev, s);
		return (0);
	}

	return (ENXIO);
}