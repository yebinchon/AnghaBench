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
struct mbuf {struct mbuf* m_next; int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_data; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct iovec* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iovec*,struct iovec*,int) ; 

int
FUNC3(struct mbuf *mbuf, struct iovec **iovptr, int *cnt,
    int *allocated)
{
	struct iovec *iov;
	struct mbuf *m, *mtmp;
	int i, j;

	*allocated = 0;
	iov = *iovptr;
	if (iov == NULL)
		*cnt = 0;

	m = mbuf;
	i = 0;
	while (m != NULL) {
		if (i == *cnt) {
			/* we need to allocate a larger array */
			j = 1;
			mtmp = m;
			while ((mtmp = mtmp->m_next) != NULL)
				j++;
			iov = FUNC1(sizeof *iov * (i + j), M_CRYPTO_DATA,
			    M_NOWAIT);
			if (iov == NULL)
				return ENOMEM;
			*allocated = 1;
			*cnt = i + j;
			FUNC2(iov, *iovptr, sizeof *iov * i);
		}

		iov[i].iov_base = m->m_data;
		iov[i].iov_len = m->m_len;

		i++;
		m = m->m_next;
	}

	if (*allocated)
		FUNC0(*cnt == i, ("did not allocate correct amount: %d != %d",
		    *cnt, i));

	*iovptr = iov;
	*cnt = i;
	return 0;
}