; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/watchdog/extr_watchdog.c_wdog_kern_pat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/watchdog/extr_watchdog.c_wdog_kern_pat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@wdog_kern_pat.first = internal global i32 1, align 4
@WD_LASTVAL = common dso_local global i32 0, align 4
@WD_INTERVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wd_last_u = common dso_local global i32 0, align 4
@wd_last_u_sysctl = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@wd_last_u_sysctl_secs = common dso_local global i32 0, align 4
@WD_TO_NEVER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@wd_softtimer = common dso_local global i64 0, align 8
@wd_softtimeo_handle = common dso_local global i32 0, align 4
@wd_timeout_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@wd_pretimeout = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@wd_lastpat = common dso_local global i32 0, align 4
@wd_lastpat_valid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wdog_kern_pat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @WD_LASTVAL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @WD_INTERVAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %102

17:                                               ; preds = %10, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @WD_LASTVAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* @wd_last_u, align 4
  %24 = load i32, i32* @WD_INTERVAL, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load i32, i32* @WD_LASTVAL, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @wd_last_u, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @WD_INTERVAL, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* @wd_last_u, align 4
  %41 = load i32, i32* @wd_last_u, align 4
  store i32 %41, i32* @wd_last_u_sysctl, align 4
  %42 = load i32, i32* @wd_last_u, align 4
  %43 = call i32 @pow2ns_to_ticks(i32 %42)
  %44 = load i32, i32* @hz, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* @wd_last_u_sysctl_secs, align 4
  br label %46

46:                                               ; preds = %37, %22
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @WD_INTERVAL, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @WD_TO_NEVER, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i64, i64* @wd_softtimer, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @callout_stop(i32* @wd_softtimeo_handle)
  br label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @pow2ns_to_ticks(i32 %64)
  %66 = load i32, i32* @wd_timeout_cb, align 4
  %67 = call i32 @callout_reset(i32* @wd_softtimeo_handle, i32 %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %61
  store i32 0, i32* %4, align 4
  br label %73

69:                                               ; preds = %55
  %70 = load i32, i32* @watchdog_list, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @EVENTHANDLER_INVOKE(i32 %70, i32 %71, i32* %4)
  br label %73

73:                                               ; preds = %69, %68
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* @wdog_kern_pat.first, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = call i32 (...) @wdog_software_attach()
  %82 = load i32, i32* @watchdog_list, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @EVENTHANDLER_INVOKE(i32 %82, i32 %83, i32* %4)
  br label %85

85:                                               ; preds = %80, %77, %73
  store i32 0, i32* @wdog_kern_pat.first, align 4
  %86 = load i32, i32* @wd_pretimeout, align 4
  %87 = call i32 @wd_set_pretimeout(i32 %86, i32 1)
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @curthread, align 4
  %92 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %93 = call i32 @kern_clock_gettime(i32 %91, i32 %92, %struct.timespec* %5)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* @wd_lastpat, align 4
  store i32 1, i32* @wd_lastpat_valid, align 4
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %85
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %15
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @pow2ns_to_ticks(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i8*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i32, i32*) #1

declare dso_local i32 @wdog_software_attach(...) #1

declare dso_local i32 @wd_set_pretimeout(i32, i32) #1

declare dso_local i32 @kern_clock_gettime(i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
