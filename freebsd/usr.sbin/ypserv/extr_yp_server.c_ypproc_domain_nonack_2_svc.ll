; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypproc_domain_nonack_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypproc_domain_nonack_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32 }

@ypproc_domain_nonack_2_svc.result = internal global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ypproc_domain_nonack_2_svc(i32* %0, %struct.svc_req* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_req*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %6 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %7 = call i64 (i32*, %struct.svc_req*, ...) @yp_access(i32* null, %struct.svc_req* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @yp_validdomain(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %10
  store i32* null, i32** %3, align 8
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* @ypproc_domain_nonack_2_svc.result, align 4
  br label %21

21:                                               ; preds = %19
  store i32* @ypproc_domain_nonack_2_svc.result, i32** %3, align 8
  br label %22

22:                                               ; preds = %21, %18, %9
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

declare dso_local i64 @yp_access(i32*, %struct.svc_req*, ...) #1

declare dso_local i64 @yp_validdomain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
