; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_inittimecounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_inittimecounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@hz = common dso_local global i32 0, align 4
@tc_tick = common dso_local global i32 0, align 4
@tick_bt = common dso_local global i32 0, align 4
@tick_sbt = common dso_local global i8* null, align 8
@tc_tick_bt = common dso_local global i32 0, align 4
@tc_tick_sbt = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Timecounters tick every %d.%03u msec\0A\00", align 1
@timecounter = common dso_local global %struct.TYPE_4__* null, align 8
@tc_setclock_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @inittimecounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inittimecounter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @hz, align 4
  %6 = icmp sgt i32 %5, 1000
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @hz, align 4
  %9 = add nsw i32 %8, 500
  %10 = sdiv i32 %9, 1000
  store i32 %10, i32* @tc_tick, align 4
  br label %12

11:                                               ; preds = %1
  store i32 1, i32* @tc_tick, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = call i32 (...) @tc_adjprecision()
  %14 = load i32, i32* @hz, align 4
  %15 = call i32 @FREQ2BT(i32 %14, i32* @tick_bt)
  %16 = load i32, i32* @tick_bt, align 4
  %17 = call i8* @bttosbt(i32 %16)
  store i8* %17, i8** @tick_sbt, align 8
  %18 = load i32, i32* @hz, align 4
  %19 = load i32, i32* @tc_tick, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @FREQ2BT(i32 %21, i32* @tc_tick_bt)
  %23 = load i32, i32* @tc_tick_bt, align 4
  %24 = call i8* @bttosbt(i32 %23)
  store i8* %24, i8** @tc_tick_sbt, align 8
  %25 = load i32, i32* @tc_tick, align 4
  %26 = mul nsw i32 %25, 1000000
  %27 = load i32, i32* @hz, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sdiv i32 %29, 1000
  %31 = load i32, i32* %3, align 4
  %32 = srem i32 %31, 1000
  %33 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %38 = call i32 %36(%struct.TYPE_4__* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %43 = call i32 %41(%struct.TYPE_4__* %42)
  %44 = call i32 @mtx_lock_spin(i32* @tc_setclock_mtx)
  %45 = call i32 @tc_windup(i32* null)
  %46 = call i32 @mtx_unlock_spin(i32* @tc_setclock_mtx)
  ret void
}

declare dso_local i32 @tc_adjprecision(...) #1

declare dso_local i32 @FREQ2BT(i32, i32*) #1

declare dso_local i8* @bttosbt(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @tc_windup(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
