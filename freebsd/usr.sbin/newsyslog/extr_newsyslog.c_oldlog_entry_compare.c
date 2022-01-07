
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oldlog_entry {scalar_t__ t; } ;



__attribute__((used)) static int
oldlog_entry_compare(const void *a, const void *b)
{
 const struct oldlog_entry *ola = a, *olb = b;

 if (ola->t > olb->t)
  return (-1);
 else if (ola->t < olb->t)
  return (1);
 else
  return (0);
}
