
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_threshold {scalar_t__ count; scalar_t__ limit; } ;



__attribute__((used)) static int
pf_check_threshold(struct pf_threshold *threshold)
{
 return (threshold->count > threshold->limit);
}
