
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct cfg_s {int ac; char** av; double _enqueue; int flows; scalar_t__ wfi; scalar_t__* q_wfi; char* fs_config; scalar_t__ dequeue; struct timeval time; int name; int th_max; int th_min; } ;
typedef int c ;


 int D (char*,int ,int,...) ;
 int DX (int,char*,int,...) ;
 int bzero (struct cfg_s*,int) ;
 int dump (struct cfg_s*) ;
 int gettimeofday (struct timeval*,int *) ;
 int init (struct cfg_s*) ;
 int mainloop (struct cfg_s*) ;
 int sprintf (char*,char*,int) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

int
main(int ac, char *av[])
{
 struct cfg_s c;
 double ll;
 int i;
 char msg[40];

 bzero(&c, sizeof(c));
 c.ac = ac;
 c.av = av;
 init(&c);
 gettimeofday(&c.time, ((void*)0));
 D("th_min %d th_max %d", c.th_min, c.th_max);

 mainloop(&c);
 {
  struct timeval end;
  gettimeofday(&end, ((void*)0));
  timersub(&end, &c.time, &c.time);
 }
 ll = c.time.tv_sec*1000000 + c.time.tv_usec;
 ll *= 1000;
 ll /= c._enqueue;
 sprintf(msg, "1::%d", c.flows);
 for (i = 0; i < c.flows; i++) {
  if (c.wfi < c.q_wfi[i])
   c.wfi = c.q_wfi[i];
 }
 D("sched=%-12s\ttime=%d.%03d sec (%.0f nsec) enq %lu %lu deq\n"
    "\twfi=%.02f\tflow=%-16s",
    c.name, (int)c.time.tv_sec, (int)c.time.tv_usec / 1000, ll,
    (unsigned long)c._enqueue, (unsigned long)c.dequeue, c.wfi,
    c.fs_config ? c.fs_config : msg);
 dump(&c);
 DX(1, "done ac %d av %p", ac, av);
 for (i=0; i < ac; i++)
  DX(1, "arg %d %s", i, av[i]);
 return 0;
}
