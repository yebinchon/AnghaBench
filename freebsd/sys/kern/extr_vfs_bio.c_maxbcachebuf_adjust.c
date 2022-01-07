
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXBCACHEBUF ;
 int MAXBSIZE ;
 int MAXPHYS ;
 scalar_t__ bootverbose ;
 int maxbcachebuf ;
 int printf (char*,int) ;

__attribute__((used)) static void
maxbcachebuf_adjust(void)
{
 int i;




 i = 2;
 while (i * 2 <= maxbcachebuf)
  i *= 2;
 maxbcachebuf = i;
 if (maxbcachebuf < MAXBSIZE)
  maxbcachebuf = MAXBSIZE;
 if (maxbcachebuf > MAXPHYS)
  maxbcachebuf = MAXPHYS;
 if (bootverbose != 0 && maxbcachebuf != MAXBCACHEBUF)
  printf("maxbcachebuf=%d\n", maxbcachebuf);
}
