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
struct params {char* fname; int prga_len; int /*<<< orphan*/  prga; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct params *p)
{
        int fd;
        int rd;

        fd = FUNC3(p->fname, O_RDONLY);
        if (fd == -1) {
                p->prga_len = 0;
                return;
        }

        rd = FUNC5(fd, p->iv, 3);
        if (rd == -1)
                FUNC1(1, "read()");
        if (rd != 3) {
                FUNC4("Short read\n");
                FUNC2(1);
        }

        rd = FUNC5(fd, p->prga, sizeof(p->prga));
        if (rd == -1)
                FUNC1(1, "read()");
        p->prga_len = rd;

        FUNC4("Loaded %d PRGA from %s\n", p->prga_len, p->fname);
        FUNC0(fd);
}