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
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int num_queues; int /*<<< orphan*/  pdev; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ADMIN_CRC32 ; 
 int /*<<< orphan*/  ENA_HASH_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENA_RX_RSS_TABLE_LOG_SIZE ; 
 int ENA_RX_RSS_TABLE_SIZE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ena_com_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ena_com_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int FUNC5 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ena_com_dev*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct ena_adapter *adapter)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	device_t dev = adapter->pdev;
	int qid, rc, i;

	rc = FUNC5(ena_dev, ENA_RX_RSS_TABLE_LOG_SIZE);
	if (FUNC7(rc != 0)) {
		FUNC1(dev, "Cannot init indirect table\n");
		return (rc);
	}

	for (i = 0; i < ENA_RX_RSS_TABLE_SIZE; i++) {
		qid = i % adapter->num_queues;
		rc = FUNC3(ena_dev, i,
		    FUNC0(qid));
		if (FUNC7((rc != 0) && (rc != EOPNOTSUPP))) {
			FUNC1(dev, "Cannot fill indirect table\n");
			goto err_rss_destroy;
		}
	}

	rc = FUNC2(ena_dev, ENA_ADMIN_CRC32, NULL,
	    ENA_HASH_KEY_SIZE, 0xFFFFFFFF);
	if (FUNC7((rc != 0) && (rc != EOPNOTSUPP))) {
		FUNC1(dev, "Cannot fill hash function\n");
		goto err_rss_destroy;
	}

	rc = FUNC6(ena_dev);
	if (FUNC7((rc != 0) && (rc != EOPNOTSUPP))) {
		FUNC1(dev, "Cannot fill hash control\n");
		goto err_rss_destroy;
	}

	return (0);

err_rss_destroy:
	FUNC4(ena_dev);
	return (rc);
}