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
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  len_hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int EINVAL ; 
 int NVRAM_TLV_TF_U8_LEN ; 
 int NVRAM_TLV_TYPE_END ; 
 size_t FUNC1 (struct bhnd_nvram_io*) ; 
 int FUNC2 (struct bhnd_nvram_io*,size_t,...) ; 

__attribute__((used)) static int
FUNC3(struct bhnd_nvram_io *io, size_t *next, size_t
    *offset, uint8_t *tag)
{
	size_t		io_offset, io_size;
	uint16_t	parsed_len;
	uint8_t		len_hdr[2];
	int		error;

	io_offset = *next;
	io_size = FUNC1(io);

	/* Save the record offset */
	if (offset != NULL)
		*offset = io_offset;

	/* Fetch initial tag */
	error = FUNC2(io, io_offset, tag, sizeof(*tag));
	if (error)
		return (error);
	io_offset++;

	/* EOF */
	if (*tag == NVRAM_TLV_TYPE_END) {
		*next = io_offset;
		return (0);
	}

	/* Read length field */
	if (*tag & NVRAM_TLV_TF_U8_LEN) {
		error = FUNC2(io, io_offset, &len_hdr,
		    sizeof(len_hdr[0]));
		if (error) {
			FUNC0("error reading TLV record size: %d\n",
			    error);
			return (error);
		}

		parsed_len = len_hdr[0];
		io_offset++;
	} else {
		error = FUNC2(io, io_offset, &len_hdr,
		    sizeof(len_hdr));
		if (error) {
			FUNC0("error reading 16-bit TLV record "
			    "size: %d\n", error);
			return (error);
		}

		parsed_len = (len_hdr[0] << 8) | len_hdr[1];
		io_offset += 2;
	}

	/* Advance to next record */
	if (parsed_len > io_size || io_size - parsed_len < io_offset) {
		/* Hit early EOF */
		FUNC0("TLV record length %hu truncated by input "
		    "size of %zu\n", parsed_len, io_size);
		return (EINVAL);
	}

	*next = io_offset + parsed_len;

	/* Valid record found */
	return (0);
}