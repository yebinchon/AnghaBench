
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int plonk (int ) ;
 int sc_tokid ;
 int token () ;

__attribute__((used)) static void
expect(int desired)
{
    if (token() != desired)
 plonk(sc_tokid);
}
