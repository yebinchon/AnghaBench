
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filepair {struct diff_filepair* two; } ;


 int free (struct diff_filepair*) ;

__attribute__((used)) static void free_combined_pair(struct diff_filepair *pair)
{
 free(pair->two);
 free(pair);
}
