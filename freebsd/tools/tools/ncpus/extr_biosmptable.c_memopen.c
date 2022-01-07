
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int _PATH_MEM ;
 scalar_t__ open (int ,int ) ;
 scalar_t__ pfd ;
 int warn (char*,int ) ;

__attribute__((used)) static int
memopen(void)
{
    if (pfd < 0) {
 pfd = open(_PATH_MEM, O_RDONLY);
 if (pfd < 0)
  warn("%s: cannot open", _PATH_MEM);
    }
    return pfd >= 0;
}
