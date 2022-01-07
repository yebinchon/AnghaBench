
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
lz_st_get_match(int st) {
 return st < 7 ? 7 : 10;
}
