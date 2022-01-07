
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pf_tagset {int mask; } ;



__attribute__((used)) static uint16_t
tag2hashindex(const struct pf_tagset *ts, uint16_t tag)
{

 return (tag & ts->mask);
}
