
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct iop_softc {int dummy; } ;
struct iop_request {int mfa; struct i2o_single_reply* reply; } ;
struct i2o_single_reply {scalar_t__ transaction_context; } ;


 int wakeup (struct iop_request*) ;

__attribute__((used)) static void
iop_done(struct iop_softc *sc, u_int32_t mfa, struct i2o_single_reply *reply)
{
    struct iop_request *request =
        (struct iop_request *)reply->transaction_context;

    request->reply = reply;
    request->mfa = mfa;
    wakeup(request);
}
