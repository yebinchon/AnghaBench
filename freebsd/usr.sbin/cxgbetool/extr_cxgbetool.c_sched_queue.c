
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct t4_sched_queue {int queue; int cl; scalar_t__ port; int member_0; } ;
typedef void* int8_t ;


 int CHELSIO_T4_SCHED_QUEUE ;
 int EINVAL ;
 long UCHAR_MAX ;
 int doit (int ,struct t4_sched_queue*) ;
 char* str_to_number (char const*,long*,int *) ;
 int strcmp (char const*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
sched_queue(int argc, const char *argv[])
{
 struct t4_sched_queue op = {0};
 char *p;
 long val;

 if (argc != 3) {

  warnx("incorrect number of arguments.");
  return (EINVAL);
 }

 p = str_to_number(argv[0], &val, ((void*)0));
 if (*p || val > UCHAR_MAX) {
  warnx("invalid port id \"%s\"", argv[0]);
  return (EINVAL);
 }
 op.port = (uint8_t)val;

 if (!strcmp(argv[1], "all") || !strcmp(argv[1], "*"))
  op.queue = -1;
 else {
  p = str_to_number(argv[1], &val, ((void*)0));
  if (*p || val < -1) {
   warnx("invalid queue \"%s\"", argv[1]);
   return (EINVAL);
  }
  op.queue = (int8_t)val;
 }

 if (!strcmp(argv[2], "unbind") || !strcmp(argv[2], "clear"))
  op.cl = -1;
 else {
  p = str_to_number(argv[2], &val, ((void*)0));
  if (*p || val < -1) {
   warnx("invalid class \"%s\"", argv[2]);
   return (EINVAL);
  }
  op.cl = (int8_t)val;
 }

 return doit(CHELSIO_T4_SCHED_QUEUE, &op);
}
