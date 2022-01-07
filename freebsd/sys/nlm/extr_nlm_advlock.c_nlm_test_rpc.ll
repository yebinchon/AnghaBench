; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_test_rpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_test_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@NLM_VERS4 = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_23__*, %struct.TYPE_22__*, i32*, %struct.rpc_callextra*, i32)* @nlm_test_rpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_test_rpc(i64 %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2, i32* %3, %struct.rpc_callextra* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rpc_callextra*, align 8
  %14 = alloca %struct.TYPE_21__, align 4
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %5, i32* %17, align 4
  store i64 %0, i64* %9, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.rpc_callextra* %4, %struct.rpc_callextra** %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NLM_VERS4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.rpc_callextra*, %struct.rpc_callextra** %13, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nlm4_test_4(%struct.TYPE_23__* %22, %struct.TYPE_22__* %23, i32* %24, %struct.rpc_callextra* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %80

29:                                               ; preds = %6
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = call i32 @nlm_convert_to_nlm_lock(i32* %38, i32* %40)
  %42 = call i32 @memset(%struct.TYPE_20__* %15, i32 0, i32 24)
  %43 = load i32*, i32** %12, align 8
  %44 = load %struct.rpc_callextra*, %struct.rpc_callextra** %13, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nlm_test_1(%struct.TYPE_21__* %14, %struct.TYPE_20__* %15, i32* %43, %struct.rpc_callextra* %44, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @RPC_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @nlm_denied, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %51
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = call i32 @nlm_convert_to_nlm4_holder(i32* %72, i32* %75)
  br label %77

77:                                               ; preds = %68, %51
  br label %78

78:                                               ; preds = %77, %29
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %21
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @nlm4_test_4(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @nlm_convert_to_nlm_lock(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @nlm_test_1(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @nlm_convert_to_nlm4_holder(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
