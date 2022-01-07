; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_watchdog.c_watchdog_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_watchdog.c_watchdog_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_cpu = common dso_local global i32 0, align 4
@watchdog_dontfire = common dso_local global i32 0, align 4
@watchdog_callout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog stopped\0A\00", align 1
@WATCHDOG_THRESHOLD = common dso_local global i32 0, align 4
@watchdog_timer = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@watchdog_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @watchdog_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %1
  store i32 -1, i32* @watchdog_cpu, align 4
  store i32 1, i32* @watchdog_dontfire, align 4
  %9 = call i32 @callout_stop(i32* @watchdog_callout)
  %10 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

11:                                               ; preds = %5
  %12 = load i32, i32* @WATCHDOG_THRESHOLD, align 4
  store i32 %12, i32* @watchdog_timer, align 4
  store i32 0, i32* @watchdog_dontfire, align 4
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @watchdog_cpu, align 4
  %14 = load i32, i32* @hz, align 4
  %15 = mul nsw i32 1, %14
  %16 = load i32, i32* @watchdog_function, align 4
  %17 = call i32 @callout_reset(i32* @watchdog_callout, i32 %15, i32 %16, i32* null)
  br label %18

18:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
