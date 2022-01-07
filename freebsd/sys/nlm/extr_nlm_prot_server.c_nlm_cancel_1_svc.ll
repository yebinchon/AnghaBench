; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_cancel_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_cancel_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_cancargs = type { i32, i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nlm_cancel_1_svc(%struct.nlm_cancargs* %0, i32* %1, %struct.svc_req* %2) #0 {
  %4 = alloca %struct.nlm_cancargs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  store %struct.nlm_cancargs* %0, %struct.nlm_cancargs** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.svc_req* %2, %struct.svc_req** %6, align 8
  %10 = load %struct.nlm_cancargs*, %struct.nlm_cancargs** %4, align 8
  %11 = getelementptr inbounds %struct.nlm_cancargs, %struct.nlm_cancargs* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load %struct.nlm_cancargs*, %struct.nlm_cancargs** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_cancargs, %struct.nlm_cancargs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.nlm_cancargs*, %struct.nlm_cancargs** %4, align 8
  %19 = getelementptr inbounds %struct.nlm_cancargs, %struct.nlm_cancargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %23 = load %struct.nlm_cancargs*, %struct.nlm_cancargs** %4, align 8
  %24 = getelementptr inbounds %struct.nlm_cancargs, %struct.nlm_cancargs* %23, i32 0, i32 0
  %25 = call i32 @nlm_convert_to_nlm4_lock(i32* %22, i32* %24)
  %26 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %27 = call i64 @nlm4_cancel_4_svc(%struct.TYPE_3__* %8, i32* %9, %struct.svc_req* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @nlm_convert_to_nlm_res(i32* %31, i32* %9)
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i64, i64* %7, align 8
  ret i64 %34
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm4_cancel_4_svc(%struct.TYPE_3__*, i32*, %struct.svc_req*) #1

declare dso_local i32 @nlm_convert_to_nlm_res(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
