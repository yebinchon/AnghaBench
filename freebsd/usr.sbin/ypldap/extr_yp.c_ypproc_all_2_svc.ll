; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_all_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_all_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_all = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.ypresp_val = type { i32 }

@ypproc_all_2_svc.res = internal global %struct.ypresp_all zeroinitializer, align 4
@AUTH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ypresp_all* @ypproc_all_2_svc(%struct.TYPE_3__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.ypresp_all*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @yp_valid_domain(i32 %8, %struct.ypresp_val* bitcast (%struct.ypresp_all* @ypproc_all_2_svc.res to %struct.ypresp_val*))
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.ypresp_all* @ypproc_all_2_svc.res, %struct.ypresp_all** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %14 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AUTH_FAILED, align 4
  %17 = call i32 @svcerr_auth(i32 %15, i32 %16)
  store %struct.ypresp_all* null, %struct.ypresp_all** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.ypresp_all*, %struct.ypresp_all** %3, align 8
  ret %struct.ypresp_all* %19
}

declare dso_local i32 @yp_valid_domain(i32, %struct.ypresp_val*) #1

declare dso_local i32 @svcerr_auth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
