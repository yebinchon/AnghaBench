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
typedef  int /*<<< orphan*/  uint32_t ;
struct camdd_dev {int /*<<< orphan*/  free_indirect_queue; int /*<<< orphan*/  free_queue; } ;
struct camdd_buf_data {int /*<<< orphan*/  alloc_len; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {struct camdd_buf_data data; } ;
struct camdd_buf {int buf_type; struct camdd_dev* dev; int /*<<< orphan*/  src_list; TYPE_1__ buf_type_spec; } ;
typedef  int camdd_buf_type ;

/* Variables and functions */
#define  CAMDD_BUF_DATA 129 
#define  CAMDD_BUF_INDIRECT 128 
 struct camdd_buf* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct camdd_buf*,int) ; 
 struct camdd_buf* FUNC4 (struct camdd_dev*,int) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

struct camdd_buf *
FUNC6(struct camdd_dev *dev, camdd_buf_type buf_type)
{
	struct camdd_buf *buf = NULL;

	switch (buf_type) {
	case CAMDD_BUF_DATA:
		buf = FUNC0(&dev->free_queue);
		if (buf != NULL) {
			struct camdd_buf_data *data;
			uint8_t *data_ptr;
			uint32_t alloc_len;

			FUNC2(&dev->free_queue, links);
			data = &buf->buf_type_spec.data;
			data_ptr = data->buf;
			alloc_len = data->alloc_len;
			FUNC3(buf, sizeof(*buf));
			data->buf = data_ptr;
			data->alloc_len = alloc_len;
		}
		break;
	case CAMDD_BUF_INDIRECT:
		buf = FUNC0(&dev->free_indirect_queue);
		if (buf != NULL) {
			FUNC2(&dev->free_indirect_queue, links);

			FUNC3(buf, sizeof(*buf));
		}
		break;
	default:
		FUNC5("Unknown buffer type %d requested", buf_type);
		break;
	}


	if (buf == NULL)
		return (FUNC4(dev, buf_type));
	else {
		FUNC1(&buf->src_list);
		buf->dev = dev;
		buf->buf_type = buf_type;

		return (buf);
	}
}