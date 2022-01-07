; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_test_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_server.c_nlm_test_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_testargs = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@nlm_denied = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nlm_test_1_svc(%struct.nlm_testargs* %0, %struct.TYPE_15__* %1, %struct.svc_req* %2) #0 {
  %4 = alloca %struct.nlm_testargs*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca %struct.TYPE_16__, align 4
  store %struct.nlm_testargs* %0, %struct.nlm_testargs** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.svc_req* %2, %struct.svc_req** %6, align 8
  %10 = load %struct.nlm_testargs*, %struct.nlm_testargs** %4, align 8
  %11 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.nlm_testargs*, %struct.nlm_testargs** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %19 = load %struct.nlm_testargs*, %struct.nlm_testargs** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_testargs, %struct.nlm_testargs* %19, i32 0, i32 0
  %21 = call i32 @nlm_convert_to_nlm4_lock(i32* %18, i32* %20)
  %22 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %23 = call i64 @nlm4_test_4_svc(%struct.TYPE_17__* %8, %struct.TYPE_16__* %9, %struct.svc_req* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nlm_convert_to_nlm_stats(i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @nlm_denied, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = call i32 @nlm_convert_to_nlm_holder(i32* %48, i32* %51)
  br label %53

53:                                               ; preds = %44, %26
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i32 @nlm_convert_to_nlm4_lock(i32*, i32*) #1

declare dso_local i64 @nlm4_test_4_svc(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.svc_req*) #1

declare dso_local i32 @nlm_convert_to_nlm_stats(i32) #1

declare dso_local i32 @nlm_convert_to_nlm_holder(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
