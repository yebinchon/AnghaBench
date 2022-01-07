
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* queue ;
 size_t queuelen ;

__attribute__((used)) static bool
peekbyte(size_t back, char c)
{

 return (queuelen >= back && queue[queuelen - back] == c);
}
