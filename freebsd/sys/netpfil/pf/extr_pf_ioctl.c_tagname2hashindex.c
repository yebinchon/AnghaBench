
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pf_tagset {int mask; int seed; } ;


 int murmur3_32_hash (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static uint16_t
tagname2hashindex(const struct pf_tagset *ts, const char *tagname)
{

 return (murmur3_32_hash(tagname, strlen(tagname), ts->seed) & ts->mask);
}
