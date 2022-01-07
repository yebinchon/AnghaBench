
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int dummy; } ;
struct gitdiff_data {int dummy; } ;



__attribute__((used)) static int gitdiff_hdrend(struct gitdiff_data *state,
     const char *line,
     struct patch *patch)
{
 return 1;
}
