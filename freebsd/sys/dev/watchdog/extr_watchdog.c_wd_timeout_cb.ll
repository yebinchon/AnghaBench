; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/watchdog/extr_watchdog.c_wd_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/watchdog/extr_watchdog.c_wd_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wd_pretimeout_act = common dso_local global i32 0, align 4
@WD_SOFT_LOG = common dso_local global i32 0, align 4
@LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"watchdog %s-timeout, WD_SOFT_LOG\0A\00", align 1
@WD_SOFT_PRINTF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"watchdog %s-timeout, WD_SOFT_PRINTF\0A\00", align 1
@WD_SOFT_PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"watchdog %s-timeout, WD_SOFT_PANIC set\00", align 1
@KDB_WHY_WATCHDOG = common dso_local global i32 0, align 4
@WD_SOFT_DDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wd_timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd_timeout_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i32, i32* @wd_pretimeout_act, align 4
  %6 = load i32, i32* @WD_SOFT_LOG, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_EMERG, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @log(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @wd_pretimeout_act, align 4
  %15 = load i32, i32* @WD_SOFT_PRINTF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @wd_pretimeout_act, align 4
  %23 = load i32, i32* @WD_SOFT_PANIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @log(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
