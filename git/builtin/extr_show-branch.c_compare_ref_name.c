
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int version_cmp (char const* const,char const* const) ;

__attribute__((used)) static int compare_ref_name(const void *a_, const void *b_)
{
 const char * const*a = a_, * const*b = b_;
 return version_cmp(*a, *b);
}
