
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;


 int PKT_PAD ;

__attribute__((used)) static inline int pad(int x)
{
        return ((x) + PKT_PAD - 1) & ~(PKT_PAD - 1) ;
}
