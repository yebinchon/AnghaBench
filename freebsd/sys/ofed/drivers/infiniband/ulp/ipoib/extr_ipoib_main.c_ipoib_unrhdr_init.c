
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipoib_unrhdr ;
 int new_unrhdr (int ,int,int *) ;

__attribute__((used)) static void
ipoib_unrhdr_init(void *arg)
{

 ipoib_unrhdr = new_unrhdr(0, 65535, ((void*)0));
}
