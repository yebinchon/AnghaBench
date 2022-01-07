
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_hint {int dummy; } ;


 scalar_t__ need_hint ;

__attribute__((used)) static size_t
key_hint_size(void)
{

 return (need_hint ? sizeof(struct key_hint) : 0);
}
