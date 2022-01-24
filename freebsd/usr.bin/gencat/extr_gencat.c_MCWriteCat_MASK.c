#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct _msgT* lh_first; } ;
struct TYPE_5__ {struct _setT* le_next; } ;
struct _setT {int setId; TYPE_2__ msghead; TYPE_1__ entries; } ;
struct _nls_set_hdr {void* __index; void* __nmsgs; void* __setno; } ;
struct _nls_msg_hdr {void* __offset; void* __msglen; void* __msgno; } ;
struct _nls_cat_hdr {void* __msg_txt_offset; void* __msg_hdr_offset; void* __mem; void* __nsets; void* __magic; } ;
struct TYPE_7__ {struct _msgT* le_next; } ;
struct _msgT {int msgId; int /*<<< orphan*/  str; TYPE_3__ entries; } ;
struct TYPE_8__ {struct _setT* lh_first; } ;

/* Variables and functions */
 int _NLS_MAGIC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_4__ sethead ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int) ; 
 void* FUNC6 (int) ; 

void
FUNC7(int fd)
{
	int     nsets;		/* number of sets */
	int     nmsgs;		/* number of msgs */
	int     string_size;	/* total size of string pool */
	int     msgcat_size;	/* total size of message catalog */
	void   *msgcat;		/* message catalog data */
	struct _nls_cat_hdr *cat_hdr;
	struct _nls_set_hdr *set_hdr;
	struct _nls_msg_hdr *msg_hdr;
	char   *strings;
	struct _setT *set;
	struct _msgT *msg;
	int     msg_index;
	int     msg_offset;

	/* determine number of sets, number of messages, and size of the
	 * string pool */
	nsets = 0;
	nmsgs = 0;
	string_size = 0;

	for (set = sethead.lh_first; set != NULL;
	    set = set->entries.le_next) {
		nsets++;

		for (msg = set->msghead.lh_first; msg != NULL;
		    msg = msg->entries.le_next) {
			nmsgs++;
			string_size += FUNC4(msg->str) + 1;
		}
	}

#ifdef DEBUG
	printf("number of sets: %d\n", nsets);
	printf("number of msgs: %d\n", nmsgs);
	printf("string pool size: %d\n", string_size);
#endif

	/* determine size and then allocate buffer for constructing external
	 * message catalog representation */
	msgcat_size = sizeof(struct _nls_cat_hdr)
	    + (nsets * sizeof(struct _nls_set_hdr))
	    + (nmsgs * sizeof(struct _nls_msg_hdr))
	    + string_size;

	msgcat = FUNC6(msgcat_size);
	FUNC2(msgcat, '\0', msgcat_size);

	/* fill in msg catalog header */
	cat_hdr = (struct _nls_cat_hdr *) msgcat;
	cat_hdr->__magic = FUNC0(_NLS_MAGIC);
	cat_hdr->__nsets = FUNC0(nsets);
	cat_hdr->__mem = FUNC0(msgcat_size - sizeof(struct _nls_cat_hdr));
	cat_hdr->__msg_hdr_offset =
	    FUNC0(nsets * sizeof(struct _nls_set_hdr));
	cat_hdr->__msg_txt_offset =
	    FUNC0(nsets * sizeof(struct _nls_set_hdr) +
	    nmsgs * sizeof(struct _nls_msg_hdr));

	/* compute offsets for set & msg header tables and string pool */
	set_hdr = (struct _nls_set_hdr *)(void *)((char *)msgcat +
	    sizeof(struct _nls_cat_hdr));
	msg_hdr = (struct _nls_msg_hdr *)(void *)((char *)msgcat +
	    sizeof(struct _nls_cat_hdr) +
	    nsets * sizeof(struct _nls_set_hdr));
	strings = (char *) msgcat +
	    sizeof(struct _nls_cat_hdr) +
	    nsets * sizeof(struct _nls_set_hdr) +
	    nmsgs * sizeof(struct _nls_msg_hdr);

	msg_index = 0;
	msg_offset = 0;
	for (set = sethead.lh_first; set != NULL;
	    set = set->entries.le_next) {

		nmsgs = 0;
		for (msg = set->msghead.lh_first; msg != NULL;
		    msg = msg->entries.le_next) {
			int     msg_len = FUNC4(msg->str) + 1;

			msg_hdr->__msgno = FUNC0(msg->msgId);
			msg_hdr->__msglen = FUNC0(msg_len);
			msg_hdr->__offset = FUNC0(msg_offset);

			FUNC1(strings, msg->str, msg_len);
			strings += msg_len;
			msg_offset += msg_len;

			nmsgs++;
			msg_hdr++;
		}

		set_hdr->__setno = FUNC0(set->setId);
		set_hdr->__nmsgs = FUNC0(nmsgs);
		set_hdr->__index = FUNC0(msg_index);
		msg_index += nmsgs;
		set_hdr++;
	}

	/* write out catalog.  XXX: should this be done in small chunks? */
	FUNC5(fd, msgcat, msgcat_size);
}