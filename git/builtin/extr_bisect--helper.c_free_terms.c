
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bisect_terms {int term_bad; int term_good; } ;


 int FREE_AND_NULL (int ) ;

__attribute__((used)) static void free_terms(struct bisect_terms *terms)
{
 FREE_AND_NULL(terms->term_good);
 FREE_AND_NULL(terms->term_bad);
}
