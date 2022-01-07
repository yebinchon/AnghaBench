
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int LogSequence; int TimeStamp; int LogEntryQualifier; int* LogData; } ;
typedef TYPE_1__ MPI_LOG_0_ENTRY ;


 scalar_t__ isprint (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
mpt_print_event(MPI_LOG_0_ENTRY *entry, int verbose)
{
 int i;

 printf("%5d %7ds %4x ", entry->LogSequence, entry->TimeStamp,
     entry->LogEntryQualifier);
 for (i = 0; i < 14; i++)
  printf("%02x ", entry->LogData[i]);
 printf("|");
 for (i = 0; i < 14; i++)
  printf("%c", isprint(entry->LogData[i]) ? entry->LogData[i] :
      '.');
 printf("|\n");
 printf("                    ");
 for (i = 0; i < 14; i++)
  printf("%02x ", entry->LogData[i + 14]);
 printf("|");
 for (i = 0; i < 14; i++)
  printf("%c", isprint(entry->LogData[i + 14]) ?
      entry->LogData[i + 14] : '.');
 printf("|\n");
}
