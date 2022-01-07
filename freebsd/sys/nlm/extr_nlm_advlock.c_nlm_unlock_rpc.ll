; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_unlock_rpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_unlock_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NLM_VERS4 = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_7__*, i32*, i32*, %struct.rpc_callextra*, i32)* @nlm_unlock_rpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_unlock_rpc(i64 %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, %struct.rpc_callextra* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rpc_callextra*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %5, i32* %17, align 4
  store i64 %0, i64* %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.rpc_callextra* %4, %struct.rpc_callextra** %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NLM_VERS4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.rpc_callextra*, %struct.rpc_callextra** %13, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nlm4_unlock_4(%struct.TYPE_7__* %22, i32* %23, i32* %24, %struct.rpc_callextra* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %52

29:                                               ; preds = %6
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @nlm_convert_to_nlm_lock(i32* %34, i32* %36)
  %38 = call i32 @memset(i32* %15, i32 0, i32 4)
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.rpc_callextra*, %struct.rpc_callextra** %13, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nlm_unlock_1(%struct.TYPE_6__* %14, i32* %15, i32* %39, %struct.rpc_callextra* %40, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @RPC_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @nlm_convert_to_nlm4_res(i32* %48, i32* %15)
  br label %50

50:                                               ; preds = %47, %29
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %21
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @nlm4_unlock_4(%struct.TYPE_7__*, i32*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @nlm_convert_to_nlm_lock(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nlm_unlock_1(%struct.TYPE_6__*, i32*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @nlm_convert_to_nlm4_res(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
