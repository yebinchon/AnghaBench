
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

__attribute__((used)) static void
invalid_call(void)
{
 panic("invalid_call() has just been called. Something's fishy here.");
}
