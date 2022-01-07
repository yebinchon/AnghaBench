
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bhnd_clock ;



__attribute__((used)) static inline bhnd_clock
bhnd_clock_max(bhnd_clock a, bhnd_clock b) {
 return (a > b ? a : b);
}
