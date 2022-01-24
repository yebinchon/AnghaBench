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
struct mbnambuf {int nb_len; int /*<<< orphan*/ * nb_buf; } ;
struct dirent {char* d_name; size_t d_namlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbnambuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

char *
FUNC2(struct mbnambuf *nbp, struct dirent *dp)
{

	if (nbp->nb_len > sizeof(dp->d_name) - 1) {
		FUNC0(nbp);
		return (NULL);
	}
	FUNC1(dp->d_name, &nbp->nb_buf[0], nbp->nb_len);
	dp->d_name[nbp->nb_len] = '\0';
	dp->d_namlen = nbp->nb_len;

	FUNC0(nbp);
	return (dp->d_name);
}