
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECORATE_SHORT_REFS ;
 scalar_t__ session_is_interactive () ;

__attribute__((used)) static int auto_decoration_style(void)
{
 return session_is_interactive() ? DECORATE_SHORT_REFS : 0;
}
