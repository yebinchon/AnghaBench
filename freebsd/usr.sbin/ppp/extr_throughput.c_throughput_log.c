
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppThroughput {int OctetsIn; int OctetsOut; int BestOctetsPerSecondTime; int BestOctetsPerSecond; scalar_t__ rolling; int PacketsOut; int PacketsIn; scalar_t__ uptime; } ;


 int ctime (int *) ;
 int log_Printf (int,char*,...) ;
 int throughput_uptime (struct pppThroughput*) ;

void
throughput_log(struct pppThroughput *t, int level, const char *title)
{
  if (t->uptime) {
    int secs_up;

    secs_up = throughput_uptime(t);
    if (title == ((void*)0))
      title = "";
    log_Printf(level, "%s%sConnect time: %d secs: %llu octets in, %llu octets"
               " out\n", title, *title ? ": " : "", secs_up, t->OctetsIn,
               t->OctetsOut);
    log_Printf(level, "%s%s%llu packets in, %llu packets out\n",
               title, *title ? ": " : "", t->PacketsIn, t->PacketsOut);
    if (secs_up == 0)
      secs_up = 1;
    if (t->rolling)
      log_Printf(level, " total %llu bytes/sec, peak %llu bytes/sec on %s",
                 (t->OctetsIn + t->OctetsOut) / secs_up, t->BestOctetsPerSecond,
                 ctime(&t->BestOctetsPerSecondTime));
    else
      log_Printf(level, " total %llu bytes/sec\n",
                 (t->OctetsIn + t->OctetsOut) / secs_up);
  }
}
