
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static int calc(uint64_t hits, uint64_t misses)
{
    if( hits )
 return 100 * hits / ( hits + misses );
    else
 return 0;
}
