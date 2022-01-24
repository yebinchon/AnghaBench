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

/* Variables and functions */
 int G_RAID_VOLUME_RLQ_NONE ; 
 int G_RAID_VOLUME_RLQ_R1EA ; 
 int G_RAID_VOLUME_RLQ_R1EO ; 
 int G_RAID_VOLUME_RLQ_R3P0 ; 
 int G_RAID_VOLUME_RLQ_R3PN ; 
 int G_RAID_VOLUME_RLQ_R4P0 ; 
 int G_RAID_VOLUME_RLQ_R4PN ; 
 int G_RAID_VOLUME_RLQ_R5EELA ; 
 int G_RAID_VOLUME_RLQ_R5EELS ; 
 int G_RAID_VOLUME_RLQ_R5EERA ; 
 int G_RAID_VOLUME_RLQ_R5EERS ; 
 int G_RAID_VOLUME_RLQ_R5ELA ; 
 int G_RAID_VOLUME_RLQ_R5ELS ; 
 int G_RAID_VOLUME_RLQ_R5ERA ; 
 int G_RAID_VOLUME_RLQ_R5ERS ; 
 int G_RAID_VOLUME_RLQ_R5LA ; 
 int G_RAID_VOLUME_RLQ_R5LS ; 
 int G_RAID_VOLUME_RLQ_R5RA ; 
 int G_RAID_VOLUME_RLQ_R5RLA ; 
 int G_RAID_VOLUME_RLQ_R5RLS ; 
 int G_RAID_VOLUME_RLQ_R5RRA ; 
 int G_RAID_VOLUME_RLQ_R5RRS ; 
 int G_RAID_VOLUME_RLQ_R5RS ; 
 int G_RAID_VOLUME_RLQ_R6LA ; 
 int G_RAID_VOLUME_RLQ_R6LS ; 
 int G_RAID_VOLUME_RLQ_R6RA ; 
 int G_RAID_VOLUME_RLQ_R6RS ; 
 int G_RAID_VOLUME_RLQ_RMDFLA ; 
 int G_RAID_VOLUME_RLQ_RMDFLS ; 
 int G_RAID_VOLUME_RLQ_RMDFRA ; 
 int G_RAID_VOLUME_RLQ_RMDFRS ; 
 int G_RAID_VOLUME_RL_CONCAT ; 
 int G_RAID_VOLUME_RL_RAID0 ; 
 int G_RAID_VOLUME_RL_RAID1 ; 
 int G_RAID_VOLUME_RL_RAID1E ; 
 int G_RAID_VOLUME_RL_RAID3 ; 
 int G_RAID_VOLUME_RL_RAID4 ; 
 int G_RAID_VOLUME_RL_RAID5 ; 
 int G_RAID_VOLUME_RL_RAID5E ; 
 int G_RAID_VOLUME_RL_RAID5EE ; 
 int G_RAID_VOLUME_RL_RAID5R ; 
 int G_RAID_VOLUME_RL_RAID6 ; 
 int G_RAID_VOLUME_RL_RAIDMDF ; 
 int G_RAID_VOLUME_RL_SINGLE ; 
 int G_RAID_VOLUME_RL_UNKNOWN ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

int
FUNC1(const char *str, int *level, int *qual)
{

	*level = G_RAID_VOLUME_RL_UNKNOWN;
	*qual = G_RAID_VOLUME_RLQ_NONE;
	if (FUNC0(str, "RAID0") == 0)
		*level = G_RAID_VOLUME_RL_RAID0;
	else if (FUNC0(str, "RAID1") == 0)
		*level = G_RAID_VOLUME_RL_RAID1;
	else if (FUNC0(str, "RAID3-P0") == 0) {
		*level = G_RAID_VOLUME_RL_RAID3;
		*qual = G_RAID_VOLUME_RLQ_R3P0;
	} else if (FUNC0(str, "RAID3-PN") == 0 ||
		   FUNC0(str, "RAID3") == 0) {
		*level = G_RAID_VOLUME_RL_RAID3;
		*qual = G_RAID_VOLUME_RLQ_R3PN;
	} else if (FUNC0(str, "RAID4-P0") == 0) {
		*level = G_RAID_VOLUME_RL_RAID4;
		*qual = G_RAID_VOLUME_RLQ_R4P0;
	} else if (FUNC0(str, "RAID4-PN") == 0 ||
		   FUNC0(str, "RAID4") == 0) {
		*level = G_RAID_VOLUME_RL_RAID4;
		*qual = G_RAID_VOLUME_RLQ_R4PN;
	} else if (FUNC0(str, "RAID5-RA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5;
		*qual = G_RAID_VOLUME_RLQ_R5RA;
	} else if (FUNC0(str, "RAID5-RS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5;
		*qual = G_RAID_VOLUME_RLQ_R5RS;
	} else if (FUNC0(str, "RAID5") == 0 ||
		   FUNC0(str, "RAID5-LA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5;
		*qual = G_RAID_VOLUME_RLQ_R5LA;
	} else if (FUNC0(str, "RAID5-LS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5;
		*qual = G_RAID_VOLUME_RLQ_R5LS;
	} else if (FUNC0(str, "RAID6-RA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID6;
		*qual = G_RAID_VOLUME_RLQ_R6RA;
	} else if (FUNC0(str, "RAID6-RS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID6;
		*qual = G_RAID_VOLUME_RLQ_R6RS;
	} else if (FUNC0(str, "RAID6") == 0 ||
		   FUNC0(str, "RAID6-LA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID6;
		*qual = G_RAID_VOLUME_RLQ_R6LA;
	} else if (FUNC0(str, "RAID6-LS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID6;
		*qual = G_RAID_VOLUME_RLQ_R6LS;
	} else if (FUNC0(str, "RAIDMDF-RA") == 0) {
		*level = G_RAID_VOLUME_RL_RAIDMDF;
		*qual = G_RAID_VOLUME_RLQ_RMDFRA;
	} else if (FUNC0(str, "RAIDMDF-RS") == 0) {
		*level = G_RAID_VOLUME_RL_RAIDMDF;
		*qual = G_RAID_VOLUME_RLQ_RMDFRS;
	} else if (FUNC0(str, "RAIDMDF") == 0 ||
		   FUNC0(str, "RAIDMDF-LA") == 0) {
		*level = G_RAID_VOLUME_RL_RAIDMDF;
		*qual = G_RAID_VOLUME_RLQ_RMDFLA;
	} else if (FUNC0(str, "RAIDMDF-LS") == 0) {
		*level = G_RAID_VOLUME_RL_RAIDMDF;
		*qual = G_RAID_VOLUME_RLQ_RMDFLS;
	} else if (FUNC0(str, "RAID10") == 0 ||
		   FUNC0(str, "RAID1E") == 0 ||
		   FUNC0(str, "RAID1E-A") == 0) {
		*level = G_RAID_VOLUME_RL_RAID1E;
		*qual = G_RAID_VOLUME_RLQ_R1EA;
	} else if (FUNC0(str, "RAID1E-O") == 0) {
		*level = G_RAID_VOLUME_RL_RAID1E;
		*qual = G_RAID_VOLUME_RLQ_R1EO;
	} else if (FUNC0(str, "SINGLE") == 0)
		*level = G_RAID_VOLUME_RL_SINGLE;
	else if (FUNC0(str, "CONCAT") == 0)
		*level = G_RAID_VOLUME_RL_CONCAT;
	else if (FUNC0(str, "RAID5E-RA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5E;
		*qual = G_RAID_VOLUME_RLQ_R5ERA;
	} else if (FUNC0(str, "RAID5E-RS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5E;
		*qual = G_RAID_VOLUME_RLQ_R5ERS;
	} else if (FUNC0(str, "RAID5E") == 0 ||
		   FUNC0(str, "RAID5E-LA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5E;
		*qual = G_RAID_VOLUME_RLQ_R5ELA;
	} else if (FUNC0(str, "RAID5E-LS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5E;
		*qual = G_RAID_VOLUME_RLQ_R5ELS;
	} else if (FUNC0(str, "RAID5EE-RA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5EE;
		*qual = G_RAID_VOLUME_RLQ_R5EERA;
	} else if (FUNC0(str, "RAID5EE-RS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5EE;
		*qual = G_RAID_VOLUME_RLQ_R5EERS;
	} else if (FUNC0(str, "RAID5EE") == 0 ||
		   FUNC0(str, "RAID5EE-LA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5EE;
		*qual = G_RAID_VOLUME_RLQ_R5EELA;
	} else if (FUNC0(str, "RAID5EE-LS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5EE;
		*qual = G_RAID_VOLUME_RLQ_R5EELS;
	} else if (FUNC0(str, "RAID5R-RA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5R;
		*qual = G_RAID_VOLUME_RLQ_R5RRA;
	} else if (FUNC0(str, "RAID5R-RS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5R;
		*qual = G_RAID_VOLUME_RLQ_R5RRS;
	} else if (FUNC0(str, "RAID5R") == 0 ||
		   FUNC0(str, "RAID5R-LA") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5R;
		*qual = G_RAID_VOLUME_RLQ_R5RLA;
	} else if (FUNC0(str, "RAID5R-LS") == 0) {
		*level = G_RAID_VOLUME_RL_RAID5R;
		*qual = G_RAID_VOLUME_RLQ_R5RLS;
	} else
		return (-1);
	return (0);
}