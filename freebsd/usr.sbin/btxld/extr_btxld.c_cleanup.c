
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove (scalar_t__) ;
 scalar_t__ tname ;

__attribute__((used)) static void
cleanup(void)
{
    if (tname)
 (void)remove(tname);
}
