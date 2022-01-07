
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; scalar_t__ lost; } ;



__attribute__((used)) static int interesting(struct sline *sline, unsigned long all_mask)
{



 return ((sline->flag & all_mask) || sline->lost);
}
