
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_OWNED ;
 char* _getenv_dynamic_locked (char const*,int*) ;
 int kenv_lock ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static char *
_getenv_dynamic(const char *name, int *idx)
{

 mtx_assert(&kenv_lock, MA_OWNED);
 return (_getenv_dynamic_locked(name, idx));
}
