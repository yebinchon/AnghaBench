#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int LogSequence; int TimeStamp; int LogEntryQualifier; int* LogData; } ;
typedef  TYPE_1__ MPI_LOG_0_ENTRY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(MPI_LOG_0_ENTRY *entry, int verbose)
{
	int i;

	FUNC1("%5d %7ds %4x ", entry->LogSequence, entry->TimeStamp,
	    entry->LogEntryQualifier);
	for (i = 0; i < 14; i++)
		FUNC1("%02x ", entry->LogData[i]);
	FUNC1("|");
	for (i = 0; i < 14; i++)
		FUNC1("%c", FUNC0(entry->LogData[i]) ? entry->LogData[i] :
		    '.');
	FUNC1("|\n");
	FUNC1("                    ");
	for (i = 0; i < 14; i++)
		FUNC1("%02x ", entry->LogData[i + 14]);
	FUNC1("|");
	for (i = 0; i < 14; i++)
		FUNC1("%c", FUNC0(entry->LogData[i + 14]) ?
		    entry->LogData[i + 14] : '.');
	FUNC1("|\n");
}