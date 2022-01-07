
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;



__attribute__((used)) static int
ata_module_event_handler(module_t mod, int what, void *arg)
{

    switch (what) {
    case 129:
 return 0;

    case 128:
 return 0;

    default:
 return EOPNOTSUPP;
    }
}
