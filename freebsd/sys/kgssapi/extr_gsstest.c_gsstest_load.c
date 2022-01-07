
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EOPNOTSUPP ;



__attribute__((used)) static int
gsstest_load(struct module *module, int cmd, void *arg)
{
        int error = 0;

        switch (cmd) {
        case 129 :
                break;
        case 128 :
                break;
        default :
                error = EOPNOTSUPP;
                break;
        }
        return error;
}
