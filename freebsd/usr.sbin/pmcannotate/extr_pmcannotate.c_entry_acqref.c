
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int en_nsamples; } ;



__attribute__((used)) static void
entry_acqref(struct entry *entry)
{

 entry->en_nsamples++;
}
