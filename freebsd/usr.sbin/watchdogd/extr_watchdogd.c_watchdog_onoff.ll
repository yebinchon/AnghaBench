; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_watchdog_onoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_watchdog_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_dry_run = common dso_local global i64 0, align 8
@fd = common dso_local global i32 0, align 4
@WDIOC_SETSOFT = common dso_local global i32 0, align 4
@softtimeout_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"setting WDIOC_SETSOFT %d\00", align 1
@timeout = common dso_local global i32 0, align 4
@WD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"watchdog_patpat failed\00", align 1
@softtimeout_act_set = common dso_local global i64 0, align 8
@WDIOC_SETSOFTTIMEOUTACT = common dso_local global i32 0, align 4
@softtimeout_act = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"setting WDIOC_SETSOFTTIMEOUTACT %d\00", align 1
@pretimeout_set = common dso_local global i64 0, align 8
@WDIOC_SETPRETIMEOUT = common dso_local global i32 0, align 4
@pretimeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"setting WDIOC_SETPRETIMEOUT %d\00", align 1
@pretimeout_act_set = common dso_local global i64 0, align 8
@WDIOC_SETPRETIMEOUTACT = common dso_local global i32 0, align 4
@pretimeout_act = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"setting WDIOC_SETPRETIMEOUTACT %d\00", align 1
@exit_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @watchdog_onoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_onoff(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @is_dry_run, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %8
  %12 = load i32, i32* @fd, align 4
  %13 = load i32, i32* @WDIOC_SETSOFT, align 4
  %14 = call i32 @ioctl(i32 %12, i32 %13, i32* @softtimeout_set)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @softtimeout_set, align 4
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %11
  %22 = load i32, i32* @timeout, align 4
  %23 = load i32, i32* @WD_ACTIVE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @watchdog_patpat(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %77

30:                                               ; preds = %21
  %31 = load i64, i64* @softtimeout_act_set, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* @fd, align 4
  %35 = load i32, i32* @WDIOC_SETSOFTTIMEOUTACT, align 4
  %36 = call i32 @ioctl(i32 %34, i32 %35, i32* @softtimeout_act)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @softtimeout_act, align 4
  %41 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %77

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i64, i64* @pretimeout_set, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* @fd, align 4
  %48 = load i32, i32* @WDIOC_SETPRETIMEOUT, align 4
  %49 = call i32 @ioctl(i32 %47, i32 %48, i32* @pretimeout)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @pretimeout, align 4
  %54 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %77

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i64, i64* @pretimeout_act_set, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* @fd, align 4
  %61 = load i32, i32* @WDIOC_SETPRETIMEOUTACT, align 4
  %62 = call i32 @ioctl(i32 %60, i32 %61, i32* @pretimeout_act)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @pretimeout_act, align 4
  %67 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %77

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i32, i32* @timeout, align 4
  %71 = load i32, i32* @WD_ACTIVE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @watchdog_patpat(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %81

74:                                               ; preds = %8
  %75 = load i32, i32* @exit_timeout, align 4
  %76 = call i32 @watchdog_patpat(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %65, %52, %39, %28
  %78 = load i32, i32* @exit_timeout, align 4
  %79 = call i32 @watchdog_patpat(i32 %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %74, %69, %17, %7
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @watchdog_patpat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
