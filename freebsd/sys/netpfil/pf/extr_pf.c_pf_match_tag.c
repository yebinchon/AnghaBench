
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {int match_tag; scalar_t__ match_tag_not; } ;
struct mbuf {int dummy; } ;



int
pf_match_tag(struct mbuf *m, struct pf_rule *r, int *tag, int mtag)
{
 if (*tag == -1)
  *tag = mtag;

 return ((!r->match_tag_not && r->match_tag == *tag) ||
     (r->match_tag_not && r->match_tag != *tag));
}
