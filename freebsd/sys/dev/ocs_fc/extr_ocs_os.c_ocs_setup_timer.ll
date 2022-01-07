; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_os.c_ocs_setup_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_os.c_ocs_setup_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i8*)*, i32, i32, i8* }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"bad parameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ocs_timer\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@__ocs_callout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_setup_timer(i32 %0, %struct.TYPE_4__* %1, void (i8*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store void (i8*)* %2, void (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %69

18:                                               ; preds = %5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @mtx_initialized(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @callout_init_mtx(i32* %30, i32* %32, i32 0)
  %34 = load void (i8*)*, void (i8*)** %9, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store void (i8*)* %34, void (i8*)** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %40, 1000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = srem i32 %43, 1000
  %45 = mul nsw i32 %44, 1000
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = call i32 @tvtohz(%struct.timeval* %12)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = load i32, i32* @INT32_MAX, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %50, %28
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i32 @mtx_lock(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @__ocs_callout, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = call i32 @callout_reset(i32* %61, i32 %62, i32 %63, %struct.TYPE_4__* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = call i32 @mtx_unlock(i32* %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %56, %16
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
