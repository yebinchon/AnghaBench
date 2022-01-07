; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_xprt_assignthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_xprt_assignthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@st_ilink = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVCPOOL_ACTIVE = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@SVCPOOL_THREADWANTED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @xprt_assignthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xprt_assignthread(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 5
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = call %struct.TYPE_9__* @LIST_FIRST(i32* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = load i32, i32* @st_ilink, align 4
  %21 = call i32 @LIST_REMOVE(%struct.TYPE_9__* %19, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @SVC_ACQUIRE(%struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @cv_signal(i32* %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SVCPOOL_ACTIVE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @time_uptime, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i64, i64* @SVCPOOL_THREADWANTED, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %46, %40, %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SVC_ACQUIRE(%struct.TYPE_8__*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
