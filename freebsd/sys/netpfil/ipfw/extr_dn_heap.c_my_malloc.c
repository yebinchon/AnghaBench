
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;

__attribute__((used)) static void *my_malloc(int s) { return malloc(s); }
