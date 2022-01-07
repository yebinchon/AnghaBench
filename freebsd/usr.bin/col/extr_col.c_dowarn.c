
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warnx (char*,char*) ;

__attribute__((used)) static void
dowarn(int line)
{

 warnx("warning: can't back up %s",
  line < 0 ? "past first line" : "-- line already flushed");
}
