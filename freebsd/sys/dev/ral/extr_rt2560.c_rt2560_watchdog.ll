; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@RT2560_F_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"not running\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rt2560_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2560_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rt2560_softc*
  store %struct.rt2560_softc* %5, %struct.rt2560_softc** %3, align 8
  %6 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %7 = call i32 @RAL_LOCK_ASSERT(%struct.rt2560_softc* %6)
  %8 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RT2560_F_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %21 = call i32 @rt2560_encryption_intr(%struct.rt2560_softc* %20)
  %22 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %23 = call i32 @rt2560_tx_intr(%struct.rt2560_softc* %22)
  %24 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %40 = call i32 @rt2560_init_locked(%struct.rt2560_softc* %39)
  %41 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @counter_u64_add(i32 %44, i32 1)
  br label %52

46:                                               ; preds = %28, %19
  %47 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %47, i32 0, i32 2
  %49 = load i32, i32* @hz, align 4
  %50 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %51 = call i32 @callout_reset(i32* %48, i32 %49, void (i8*)* @rt2560_watchdog, %struct.rt2560_softc* %50)
  br label %52

52:                                               ; preds = %46, %34, %18
  ret void
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2560_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rt2560_encryption_intr(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_tx_intr(%struct.rt2560_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rt2560_init_locked(%struct.rt2560_softc*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.rt2560_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
