; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_tmr_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_tmr_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i64 }
%struct.timespec = type { i64 }

@timers = common dso_local global i32 0, align 4
@FLG_WATCHDOG = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@FLG_WDEXP = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @tmr_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmr_watchdog(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ctx*
  store %struct.ctx* %9, %struct.ctx** %5, align 8
  %10 = load %struct.ctx*, %struct.ctx** %5, align 8
  %11 = call i32 @tmr_add(i32* @timers, i32 1, i32 5, void (i32, i8*)* @tmr_watchdog, %struct.ctx* %10)
  %12 = load %struct.ctx*, %struct.ctx** %5, align 8
  %13 = getelementptr inbounds %struct.ctx, %struct.ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLG_WATCHDOG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %21 = call i32 @clock_gettime(i32 %20, %struct.timespec* %7)
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ctx*, %struct.ctx** %5, align 8
  %25 = getelementptr inbounds %struct.ctx, %struct.ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load i32, i32* @FLG_WDEXP, align 4
  %30 = load %struct.ctx*, %struct.ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ctx, %struct.ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = call i32 (...) @getpid()
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SIGHUP, align 4
  %37 = call i32 @kill(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %18, %28, %19
  ret void
}

declare dso_local i32 @tmr_add(i32*, i32, i32, void (i32, i8*)*, %struct.ctx*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
