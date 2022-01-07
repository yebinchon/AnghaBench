; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_granted_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_granted_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_testargs = type { i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nlm_granted_1_svc(%struct.nlm_testargs* %0, i32* %1, %struct.svc_req* %2) #0 {
  %4 = alloca %struct.nlm_testargs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  store %struct.nlm_testargs* %0, %struct.nlm_testargs** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.svc_req* %2, %struct.svc_req** %6, align 8
  %10 = load %struct.nlm_testargs*, %struct.nlm_testargs** %4, align 8
  %11 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.nlm_testargs*, %struct.nlm_testargs** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %19 = load %struct.nlm_testargs*, %struct.nlm_testargs** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %19, i32 0, i32 0
  %21 = call i32 @nlm_convert_to_nlm4_lock(i32* %18, i32* %20)
  %22 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %23 = call i64 @nlm4_granted_4_svc(%struct.TYPE_3__* %8, i32* %9, %struct.svc_req* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @nlm_convert_to_nlm_res(i32* %27, i32* %9)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i64, i64* %7, align 8
  ret i64 %30
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm4_granted_4_svc(%struct.TYPE_3__*, i32*, %struct.svc_req*) #1

declare dso_local i32 @nlm_convert_to_nlm_res(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
