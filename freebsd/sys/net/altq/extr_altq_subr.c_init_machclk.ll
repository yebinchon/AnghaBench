; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/altq/extr_altq_subr.c_init_machclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/altq/extr_altq_subr.c_init_machclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@init_machclk.called = internal global i32 0, align 4
@machclk_usepcc = common dso_local global i64 0, align 8
@MACHCLK_SHIFT = common dso_local global i32 0, align 4
@machclk_freq = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@machclk_per_tick = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@init_machclk.wait = internal global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"init_machclk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_machclk() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @init_machclk.called, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @init_machclk_setup()
  store i32 1, i32* @init_machclk.called, align 4
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i64, i64* @machclk_usepcc, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @MACHCLK_SHIFT, align 4
  %16 = shl i32 1000000, %15
  store i32 %16, i32* @machclk_freq, align 4
  %17 = load i32, i32* @machclk_freq, align 4
  %18 = load i32, i32* @hz, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* @machclk_per_tick, align 4
  br label %62

20:                                               ; preds = %11
  %21 = call i32 @atomic_load_acq_64(i32* @tsc_freq)
  store i32 %21, i32* @machclk_freq, align 4
  %22 = load i32, i32* @machclk_freq, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = call i32 @microtime(%struct.timeval* %1)
  %26 = call i32 (...) @read_machclk()
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @hz, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @PWAIT, align 4
  %29 = load i32, i32* @PCATCH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @tsleep(i32* @init_machclk.wait, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @microtime(%struct.timeval* %2)
  %34 = call i32 (...) @read_machclk()
  store i32 %34, i32* %4, align 4
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %41, %43
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %24
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %51, %52
  %54 = mul nsw i32 %53, 1000000
  %55 = load i32, i32* %5, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* @machclk_freq, align 4
  br label %57

57:                                               ; preds = %50, %24
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* @machclk_freq, align 4
  %60 = load i32, i32* @hz, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* @machclk_per_tick, align 4
  br label %62

62:                                               ; preds = %58, %14
  ret void
}

declare dso_local i32 @init_machclk_setup(...) #1

declare dso_local i32 @atomic_load_acq_64(i32*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @read_machclk(...) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
