
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_name; } ;
struct socket {int dummy; } ;


 int EOPNOTSUPP ;




 int V_mrt_api_config ;
 int V_pim_assert_enabled ;
 int mrt_api_support ;
 int mrt_api_version ;
 int sooptcopyout (struct sockopt*,int *,int) ;

__attribute__((used)) static int
X_ip_mrouter_get(struct socket *so, struct sockopt *sopt)
{
    int error;

    switch (sopt->sopt_name) {
    case 128:
 error = sooptcopyout(sopt, &mrt_api_version, sizeof mrt_api_version);
 break;

    case 129:
 error = sooptcopyout(sopt, &V_pim_assert_enabled,
     sizeof V_pim_assert_enabled);
 break;

    case 130:
 error = sooptcopyout(sopt, &mrt_api_support, sizeof mrt_api_support);
 break;

    case 131:
 error = sooptcopyout(sopt, &V_mrt_api_config, sizeof V_mrt_api_config);
 break;

    default:
 error = EOPNOTSUPP;
 break;
    }
    return error;
}
