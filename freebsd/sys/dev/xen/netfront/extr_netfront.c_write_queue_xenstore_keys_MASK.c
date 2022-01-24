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
struct xs_transaction {int dummy; } ;
struct netfront_txq {int id; scalar_t__ xen_intr_handle; int /*<<< orphan*/  ring_ref; } ;
struct netfront_rxq {int id; scalar_t__ xen_intr_handle; int /*<<< orphan*/  ring_ref; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*,...) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xs_transaction,char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev,
    struct netfront_rxq *rxq,
    struct netfront_txq *txq,
    struct xs_transaction *xst, bool hierarchy)
{
	int err;
	const char *message;
	const char *node = FUNC7(dev);
	char *path;
	size_t path_size;

	FUNC0(rxq->id == txq->id, ("Mismatch between RX and TX queue ids"));
	/* Split event channel support is not yet there. */
	FUNC0(rxq->xen_intr_handle == txq->xen_intr_handle,
	    ("Split event channels are not supported"));

	if (hierarchy) {
		path_size = FUNC4(node) + 10;
		path = FUNC2(path_size, M_DEVBUF, M_WAITOK|M_ZERO);
		FUNC3(path, path_size, "%s/queue-%u", node, rxq->id);
	} else {
		path_size = FUNC4(node) + 1;
		path = FUNC2(path_size, M_DEVBUF, M_WAITOK|M_ZERO);
		FUNC3(path, path_size, "%s", node);
	}

	err = FUNC8(*xst, path, "tx-ring-ref","%u", txq->ring_ref);
	if (err != 0) {
		message = "writing tx ring-ref";
		goto error;
	}
	err = FUNC8(*xst, path, "rx-ring-ref","%u", rxq->ring_ref);
	if (err != 0) {
		message = "writing rx ring-ref";
		goto error;
	}
	err = FUNC8(*xst, path, "event-channel", "%u",
	    FUNC5(rxq->xen_intr_handle));
	if (err != 0) {
		message = "writing event-channel";
		goto error;
	}

	FUNC1(path, M_DEVBUF);

	return (0);

error:
	FUNC1(path, M_DEVBUF);
	FUNC6(dev, err, "%s", message);

	return (err);
}