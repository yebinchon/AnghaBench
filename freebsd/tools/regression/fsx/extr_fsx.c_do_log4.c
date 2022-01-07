
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_entry {int operation; int* args; } ;


 size_t LOGSIZE ;
 int logcount ;
 size_t logptr ;
 struct log_entry* oplog ;

void
do_log4(int operation, int arg0, int arg1, int arg2)
{
 struct log_entry *le;

 le = &oplog[logptr];
 le->operation = operation;
 le->args[0] = arg0;
 le->args[1] = arg1;
 le->args[2] = arg2;
 logptr++;
 logcount++;
 if (logptr >= LOGSIZE)
  logptr = 0;
}
