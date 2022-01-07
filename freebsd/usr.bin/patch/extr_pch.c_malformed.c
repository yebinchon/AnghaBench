
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int fatal (char*,int ,int ) ;
 int p_input_line ;

__attribute__((used)) static void
malformed(void)
{
 fatal("malformed patch at line %ld: %s", p_input_line, buf);

}
