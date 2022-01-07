
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 scalar_t__ cold ;
 int ms_scale (int) ;
 int pause (char*,int ) ;

__attribute__((used)) static inline void
safe_pause_ms(int x) {
 if (cold) {
  DELAY(x*1000);
 } else {
  pause("e1000_delay", ms_scale(x));
 }
}
