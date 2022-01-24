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
struct pvo_entry {int /*<<< orphan*/  pvo_vaddr; } ;

/* Variables and functions */
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PVO_BOOTSTRAP ; 
 size_t FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvo_entry*,int) ; 
 struct pvo_entry* moea64_bpvo_pool ; 
 int moea64_bpvo_pool_index ; 
 int moea64_bpvo_pool_size ; 
 int /*<<< orphan*/  moea64_initialized ; 
 int /*<<< orphan*/  moea64_pvo_zone ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct pvo_entry *
FUNC4(int bootstrap)
{
	struct pvo_entry *pvo;

	if (!moea64_initialized || bootstrap) {
		if (moea64_bpvo_pool_index >= moea64_bpvo_pool_size) {
			FUNC2("moea64_enter: bpvo pool exhausted, %d, %d, %zd",
			      moea64_bpvo_pool_index, moea64_bpvo_pool_size,
			      moea64_bpvo_pool_size * sizeof(struct pvo_entry));
		}
		pvo = &moea64_bpvo_pool[
		    FUNC0(&moea64_bpvo_pool_index, 1)];
		FUNC1(pvo, sizeof(*pvo));
		pvo->pvo_vaddr = PVO_BOOTSTRAP;
	} else
		pvo = FUNC3(moea64_pvo_zone, M_NOWAIT | M_ZERO);

	return (pvo);
}