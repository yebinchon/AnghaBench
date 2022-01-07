
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* tname ;
 int unlink (scalar_t__*) ;

__attribute__((used)) static void
cleanup(void)
{
 if (tname[0])
  (void)unlink(tname);
}
