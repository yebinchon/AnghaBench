
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fingerprint {int dummy; } ;


 int free_fingerprint (struct fingerprint*) ;

__attribute__((used)) static void free_line_fingerprints(struct fingerprint *fingerprints,
       int nr_fingerprints)
{
 int i;

 for (i = 0; i < nr_fingerprints; i++)
  free_fingerprint(&fingerprints[i]);
}
