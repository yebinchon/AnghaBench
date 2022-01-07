; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_random_harvestq.c_random_kthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_random_harvestq.c_random_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@random_kthread_control = common dso_local global i32 0, align 4
@RANDOM_RING_MAX = common dso_local global i32 0, align 4
@harvest_context = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RANDOM_ACCUM_MAX = common dso_local global i64 0, align 8
@RANDOM_UMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@SBT_1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @random_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_kthread() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 1, i32* @random_kthread_control, align 4
  br label %4

4:                                                ; preds = %56, %0
  %5 = load i32, i32* @random_kthread_control, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %4
  %8 = load i32, i32* @RANDOM_RING_MAX, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %30, %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 2, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 2, i32 1), align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 2, i32 0), align 8
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @RANDOM_RING_MAX, align 4
  %18 = srem i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 2, i32 2), align 8
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %20, %21
  %23 = call i32 @random_harvestq_fast_process_event(i64 %22)
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 2, i32 0), align 8
  %26 = load i64, i64* %1, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %1, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  br label %31

30:                                               ; preds = %14
  br label %10

31:                                               ; preds = %29, %10
  %32 = call i32 (...) @random_sources_feed()
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %53, %31
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @RANDOM_ACCUM_MAX, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 1, i32 0), align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 1, i32 0), align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i32, i32* @RANDOM_UMA, align 4
  %48 = call i32 @random_harvest_direct(i64* %46, i32 8, i32 %47)
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 1, i32 0), align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load i32, i32* @SBT_1S, align 4
  %58 = sdiv i32 %57, 10
  %59 = call i32 @C_PREL(i32 1)
  %60 = call i32 @tsleep_sbt(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %58, i32 0, i32 %59)
  br label %4

61:                                               ; preds = %4
  store i32 -1, i32* @random_kthread_control, align 4
  %62 = call i32 @wakeup(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @harvest_context, i32 0, i32 0))
  %63 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @random_harvestq_fast_process_event(i64) #1

declare dso_local i32 @random_sources_feed(...) #1

declare dso_local i32 @random_harvest_direct(i64*, i32, i32) #1

declare dso_local i32 @tsleep_sbt(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @C_PREL(i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
