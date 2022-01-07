; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_watchdog_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_watchdog_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.stat = type { i32 }

@end_program = common dso_local global i32 0, align 4
@test_cmd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"/etc\00", align 1
@timeout = common dso_local global i32 0, align 4
@WD_ACTIVE = common dso_local global i32 0, align 4
@nap = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not stop the watchdog, not exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @watchdog_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_loop() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.stat, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  br label %7

7:                                                ; preds = %58, %0
  %8 = load i32, i32* @end_program, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  %11 = call i32 @watchdog_getuptime(%struct.timespec* %1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* @end_program, align 4
  br label %48

15:                                               ; preds = %10
  %16 = load i32*, i32** @test_cmd, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** @test_cmd, align 8
  %20 = call i32 @system(i32* %19)
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %15
  %22 = call i32 @stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.stat* %3)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @watchdog_getuptime(%struct.timespec* %2)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* @end_program, align 4
  br label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @timeout, align 4
  %33 = load i32, i32* @WD_ACTIVE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @watchdog_patpat(i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = call i64 @watchdog_check_dogfunction_time(%struct.timespec* %1, %struct.timespec* %2)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @nap, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub nsw i64 %38, %39
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64, i64* @nap, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i32 @sleep(i64 %45)
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %27, %14
  %49 = load i32, i32* @end_program, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = call i64 @watchdog_onoff(i32 0)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 2, i32* @end_program, align 4
  br label %57

55:                                               ; preds = %51
  %56 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @end_program, align 4
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %48
  br label %7

59:                                               ; preds = %7
  ret void
}

declare dso_local i32 @watchdog_getuptime(%struct.timespec*) #1

declare dso_local i32 @system(i32*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @watchdog_patpat(i32) #1

declare dso_local i64 @watchdog_check_dogfunction_time(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @sleep(i64) #1

declare dso_local i64 @watchdog_onoff(i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
