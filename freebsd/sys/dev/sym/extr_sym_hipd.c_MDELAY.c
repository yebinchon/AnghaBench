
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDELAY (int) ;

__attribute__((used)) static void MDELAY(int ms) { while (ms--) UDELAY(1000); }
