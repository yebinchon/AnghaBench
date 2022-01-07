
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct gpt_ent {int dummy; } ;


 int nparts ;
 int secsz ;

__attribute__((used)) static u_int
gpt_tblsz(void)
{
 u_int ents;

 ents = secsz / sizeof(struct gpt_ent);
 return ((nparts + ents - 1) / ents);
}
