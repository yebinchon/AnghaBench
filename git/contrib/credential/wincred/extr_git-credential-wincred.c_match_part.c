
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int match_part_with_last (int *,int ,int ,int ) ;

__attribute__((used)) static int match_part(LPCWSTR *ptarget, LPCWSTR want, LPCWSTR delim)
{
 return match_part_with_last(ptarget, want, delim, 0);
}
