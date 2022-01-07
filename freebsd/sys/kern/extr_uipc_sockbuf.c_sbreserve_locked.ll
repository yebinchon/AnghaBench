; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbreserve_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbreserve_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i64, i64, i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@sb_max_adj = common dso_local global i32 0, align 4
@RLIMIT_SBSIZE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@sb_efficiency = common dso_local global i32 0, align 4
@sb_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbreserve_locked(%struct.sockbuf* %0, i32 %1, %struct.socket* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.socket* %2, %struct.socket** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %12 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @sb_max_adj, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

17:                                               ; preds = %4
  %18 = load %struct.thread*, %struct.thread** %9, align 8
  %19 = icmp ne %struct.thread* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.thread*, %struct.thread** %9, align 8
  %22 = load i32, i32* @RLIMIT_SBSIZE, align 4
  %23 = call i32 @lim_cur(%struct.thread* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.socket*, %struct.socket** %8, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @chgsbsize(i32 %31, i64* %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %61

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @sb_efficiency, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @sb_max, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  %45 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %46 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %48 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %51 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %56 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %59 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %39
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %38, %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @chgsbsize(i32, i64*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
