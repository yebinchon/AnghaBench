; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_setclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_setclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.bintime = type { i32 }

@tc_setclock_mtx = common dso_local global i32 0, align 4
@rtc_generation = common dso_local global i32 0, align 4
@sleeping_on_old_rtc = common dso_local global i32 0, align 4
@timestepwarnings = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Time stepped from %jd.%09ld to %jd.%09ld (%jd.%09ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tc_setclock(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.bintime, align 4
  %6 = alloca %struct.bintime, align 4
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %7 = load %struct.timespec*, %struct.timespec** %2, align 8
  %8 = call i32 @timespec2bintime(%struct.timespec* %7, %struct.bintime* %5)
  %9 = call i32 @nanotime(%struct.timespec* %3)
  %10 = call i32 @mtx_lock_spin(i32* @tc_setclock_mtx)
  %11 = call i32 @cpu_tick_calibrate(i32 1)
  %12 = call i32 @binuptime(%struct.bintime* %6)
  %13 = call i32 @bintime_sub(%struct.bintime* %5, %struct.bintime* %6)
  %14 = call i32 @tc_windup(%struct.bintime* %5)
  %15 = call i32 @mtx_unlock_spin(i32* @tc_setclock_mtx)
  %16 = call i32 @atomic_add_rel_int(i32* @rtc_generation, i32 2)
  %17 = load i32, i32* @sleeping_on_old_rtc, align 4
  %18 = call i32 @sleepq_chains_remove_matching(i32 %17)
  %19 = load i64, i64* @timestepwarnings, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = call i32 @nanotime(%struct.timespec* %4)
  %23 = load i32, i32* @LOG_INFO, align 4
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.timespec*, %struct.timespec** %2, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.timespec*, %struct.timespec** %2, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @log(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %31, i32 %33, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @timespec2bintime(%struct.timespec*, %struct.bintime*) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @cpu_tick_calibrate(i32) #1

declare dso_local i32 @binuptime(%struct.bintime*) #1

declare dso_local i32 @bintime_sub(%struct.bintime*, %struct.bintime*) #1

declare dso_local i32 @tc_windup(%struct.bintime*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @atomic_add_rel_int(i32*, i32) #1

declare dso_local i32 @sleepq_chains_remove_matching(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
