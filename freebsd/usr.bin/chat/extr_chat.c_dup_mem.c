
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (int,char*) ;
 void* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;

void *
dup_mem(void *b, size_t c)
{
    void *ans = malloc (c);
    if (!ans)
 fatal(2, "memory error!");

    memcpy (ans, b, c);
    return ans;
}
