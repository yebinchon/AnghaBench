; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_os.c_dcons_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_os.c_dcons_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_softc = type { %struct.tty* }
%struct.tty = type { i32 }

@DCONS_NPORT = common dso_local global i32 0, align 4
@sc = common dso_local global %struct.dcons_softc* null, align 8
@poll_idle = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@poll_hz = common dso_local global i32 0, align 4
@DCONS_POLL_IDLE = common dso_local global i32 0, align 4
@dcons_callout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dcons_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcons_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.dcons_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DCONS_NPORT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.dcons_softc*, %struct.dcons_softc** @sc, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %13, i64 %15
  store %struct.dcons_softc* %16, %struct.dcons_softc** %4, align 8
  %17 = load %struct.dcons_softc*, %struct.dcons_softc** %4, align 8
  %18 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %17, i32 0, i32 0
  %19 = load %struct.tty*, %struct.tty** %18, align 8
  store %struct.tty* %19, %struct.tty** %3, align 8
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = call i32 @tty_lock(%struct.tty* %20)
  br label %22

22:                                               ; preds = %26, %12
  %23 = load %struct.dcons_softc*, %struct.dcons_softc** %4, align 8
  %24 = call i32 @dcons_os_checkc_nopoll(%struct.dcons_softc* %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.tty*, %struct.tty** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ttydisc_rint(%struct.tty* %27, i32 %28, i32 0)
  store i32 0, i32* @poll_idle, align 4
  br label %22

30:                                               ; preds = %22
  %31 = load %struct.tty*, %struct.tty** %3, align 8
  %32 = call i32 @ttydisc_rint_done(%struct.tty* %31)
  %33 = load %struct.tty*, %struct.tty** %3, align 8
  %34 = call i32 @tty_unlock(%struct.tty* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load i32, i32* @poll_idle, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @poll_idle, align 4
  %41 = load i32, i32* @hz, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @poll_idle, align 4
  %43 = load i32, i32* @poll_hz, align 4
  %44 = load i32, i32* @DCONS_POLL_IDLE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @poll_hz, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sdiv i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tty*, %struct.tty** %3, align 8
  %54 = call i32 @callout_reset(i32* @dcons_callout, i32 %52, void (i8*)* @dcons_timeout, %struct.tty* %53)
  ret void
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @dcons_os_checkc_nopoll(%struct.dcons_softc*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
