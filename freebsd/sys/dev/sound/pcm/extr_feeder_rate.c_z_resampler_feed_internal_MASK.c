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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct z_info {scalar_t__ channels; scalar_t__ bps; scalar_t__ z_startdrift; scalar_t__ z_alphadrift; int z_start; int z_size; scalar_t__ z_pos; int z_cycle; scalar_t__ z_alpha; scalar_t__ z_gy; int /*<<< orphan*/  (* z_resample ) (struct z_info*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * z_delay; } ;
struct pcm_feeder {int /*<<< orphan*/  source; struct z_info* data; } ;
struct pcm_channel {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (struct z_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (struct z_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct z_info*,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct pcm_channel*,int /*<<< orphan*/ *,scalar_t__,void*) ; 
 scalar_t__ FUNC7 (struct z_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct z_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct z_info*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct z_info*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (struct z_info*,int,scalar_t__) ; 
 void* FUNC13 (struct z_info*,int,int) ; 

__attribute__((used)) static uint32_t
FUNC14(struct pcm_feeder *f, struct pcm_channel *c,
    uint8_t *b, uint32_t count, void *source)
{
	struct z_info *info;
	int32_t alphadrift, startdrift, reqout, ocount, reqin, align;
	int32_t fetch, fetched, start, cp;
	uint8_t *dst;

	info = f->data;
	if (info->z_resample == NULL)
		return (FUNC6(f->source, c, b, count, source));

	/*
	 * Calculate sample size alignment and amount of sample output.
	 * We will do everything in sample domain, but at the end we
	 * will jump back to byte domain.
	 */
	align = info->channels * info->bps;
	ocount = FUNC0(count, align);
	if (ocount == 0)
		return (0);

	/*
	 * Calculate amount of input samples that is needed to generate
	 * exact amount of output.
	 */
	reqin = FUNC10(info, ocount) - FUNC7(info);

#ifdef Z_USE_ALPHADRIFT
	startdrift = info->z_startdrift;
	alphadrift = info->z_alphadrift;
#else
	startdrift = FUNC1(info, 0, 1);
	alphadrift = FUNC5(info, startdrift, 1);
#endif

	dst = b;

	do {
		if (reqin != 0) {
			fetch = FUNC11(FUNC8(info), reqin);
			if (fetch == 0) {
				/*
				 * No more free spaces, so wind enough
				 * samples back to the head of delay line
				 * in byte domain.
				 */
				fetched = FUNC7(info);
				start = FUNC13(info, info->z_start,
				    (info->z_size << 1) - 1);
				cp = (info->z_size << 1) + fetched;
				FUNC4(info->z_delay + (start * align),
				    info->z_delay, cp * align);
				info->z_start =
				    FUNC13(info, info->z_size << 1, 1);
				info->z_pos =
				    FUNC12(info, info->z_start, fetched + 1);
				fetch = FUNC11(FUNC8(info), reqin);
#ifdef Z_DIAGNOSTIC
				if (1) {
					static uint32_t kk = 0;
					fprintf(stderr,
					    "Buffer Move: "
					    "start=%d fetched=%d cp=%d "
					    "cycle=%u [%u]\r",
					    start, fetched, cp, info->z_cycle,
					    ++kk);
				}
				info->z_cycle = 0;
#endif
			}
			if (fetch != 0) {
				/*
				 * Fetch in byte domain and jump back
				 * to sample domain.
				 */
				fetched = FUNC0(FUNC6(f->source, c,
				    info->z_delay + (info->z_pos * align),
				    fetch * align, source), align);
				/*
				 * Prepare to convert fetched buffer,
				 * or mark us done if we cannot fulfill
				 * the request.
				 */
				reqin -= fetched;
				info->z_pos += fetched;
				if (fetched != fetch)
					reqin = 0;
			}
		}

		reqout = FUNC11(FUNC9(info, FUNC7(info)), ocount);
		if (reqout != 0) {
			ocount -= reqout;

			/*
			 * Drift.. drift.. drift..
			 *
			 * Notice that there are 2 methods of doing the drift
			 * operations: The former is much cleaner (in a sense
			 * of mathematical readings of my eyes), but slower
			 * due to integer division in z_gy2gx(). Nevertheless,
			 * both should give the same exact accurate drifting
			 * results, so the later is favourable.
			 */
			do {
				info->z_resample(info, dst);
#if 0
				startdrift = z_gy2gx(info, 1);
				alphadrift = z_drift(info, startdrift, 1);
				info->z_start += startdrift;
				info->z_alpha += alphadrift;
#else
				info->z_alpha += alphadrift;
				if (info->z_alpha < info->z_gy)
					info->z_start += startdrift;
				else {
					info->z_start += startdrift - 1;
					info->z_alpha -= info->z_gy;
				}
#endif
				dst += align;
#ifdef Z_DIAGNOSTIC
				info->z_cycle++;
#endif
			} while (--reqout != 0);
		}
	} while (reqin != 0 && ocount != 0);

	/*
	 * Back to byte domain..
	 */
	return (dst - b);
}