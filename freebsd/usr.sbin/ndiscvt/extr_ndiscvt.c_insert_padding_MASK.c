#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  void uint8_t ;
struct TYPE_5__ {int ish_vsize; } ;
struct TYPE_6__ {int ish_rawdataaddr; int ish_rawdatasize; int ish_vaddr; TYPE_1__ ish_misc; } ;
typedef  TYPE_2__ image_section_header ;
struct TYPE_7__ {int /*<<< orphan*/  ioh_filealign; } ;
typedef  TYPE_3__ image_optional_header ;
typedef  int /*<<< orphan*/  image_nt_header ;
typedef  int /*<<< orphan*/  image_dos_header ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (void*,int) ; 

__attribute__((used)) static int
FUNC9(void **imgbase, int *imglen)
{
        image_section_header	*sect_hdr;
        image_dos_header	*dos_hdr;
        image_nt_header		*nt_hdr;
	image_optional_header	opt_hdr;
        int			i = 0, sections, curlen = 0;
	int			offaccum = 0, oldraddr, oldrlen;
	uint8_t			*newimg, *tmp;

	newimg = FUNC5(*imglen);

	if (newimg == NULL)
		return(ENOMEM);

	FUNC2(*imgbase, newimg, *imglen);
	curlen = *imglen;

	if (FUNC6((vm_offset_t)newimg, &opt_hdr))
		return(0);

        sections = FUNC7((vm_offset_t)newimg);

	FUNC1(newimg);

	for (i = 0; i < sections; i++) {
		oldraddr = sect_hdr->ish_rawdataaddr;
		oldrlen = sect_hdr->ish_rawdatasize;
		sect_hdr->ish_rawdataaddr = sect_hdr->ish_vaddr;
		offaccum += FUNC0(sect_hdr->ish_vaddr - oldraddr,
		    opt_hdr.ioh_filealign);
		offaccum +=
		    FUNC0(sect_hdr->ish_misc.ish_vsize,
			     opt_hdr.ioh_filealign) -
		    FUNC0(sect_hdr->ish_rawdatasize,
			     opt_hdr.ioh_filealign);
		tmp = FUNC8(newimg, *imglen + offaccum);
		if (tmp == NULL) {
			FUNC4(newimg);
			return(ENOMEM);
		}
		newimg = tmp;
		FUNC1(newimg);
		sect_hdr += i;
		FUNC3(newimg + sect_hdr->ish_rawdataaddr,
		    FUNC0(sect_hdr->ish_misc.ish_vsize,
		    opt_hdr.ioh_filealign));
		FUNC2((uint8_t *)(*imgbase) + oldraddr,
		    newimg + sect_hdr->ish_rawdataaddr, oldrlen);
		sect_hdr++;
	}

	FUNC4(*imgbase);

	*imgbase = newimg;
	*imglen += offaccum;

	return(0);
}