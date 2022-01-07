
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int IEC ;
 int do_putuint64 (int ,int,int,int,int ) ;

__attribute__((used)) static void
putuint64(uint64_t n, int l, int lc, int w)
{

 do_putuint64(n, l, lc, w, IEC);
}
