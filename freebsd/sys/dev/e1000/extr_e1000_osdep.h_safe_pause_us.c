
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 scalar_t__ cold ;
 int hz ;
 int max (int,int) ;
 int pause (char*,int ) ;

__attribute__((used)) static inline void
safe_pause_us(int x) {
 if (cold) {
  DELAY(x);
 } else {
  pause("e1000_delay", max(1, x/(1000000/hz)));
 }
}
