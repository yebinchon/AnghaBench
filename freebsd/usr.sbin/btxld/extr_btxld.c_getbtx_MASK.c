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
struct btx_hdr {scalar_t__* btx_magic; int /*<<< orphan*/  btx_entry; void* btx_textsz; void* btx_pgctl; } ;

/* Variables and functions */
 scalar_t__ BTX_MAG0 ; 
 scalar_t__ BTX_MAG1 ; 
 scalar_t__ BTX_MAG2 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fname ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct btx_hdr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int fd, struct btx_hdr * btx)
{
    if (FUNC3(fd, btx, sizeof(*btx), 0) != sizeof(*btx) ||
	btx->btx_magic[0] != BTX_MAG0 ||
	btx->btx_magic[1] != BTX_MAG1 ||
	btx->btx_magic[2] != BTX_MAG2)
	FUNC0(1, "%s: Not a BTX kernel", fname);
    btx->btx_pgctl = FUNC1(btx->btx_pgctl);
    btx->btx_textsz = FUNC1(btx->btx_textsz);
    btx->btx_entry = FUNC2(btx->btx_entry);
}