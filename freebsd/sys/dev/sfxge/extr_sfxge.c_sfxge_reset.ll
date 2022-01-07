; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i64, i32, i32 }

@SFXGE_STARTED = common dso_local global i64 0, align 8
@sfxge_restart_attempts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"start on reset failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"reset failed; interface is now stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sfxge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_reset(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.sfxge_softc*
  store %struct.sfxge_softc* %10, %struct.sfxge_softc** %5, align 8
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %12 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %11)
  %13 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %14 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SFXGE_STARTED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %21 = call i32 @sfxge_stop(%struct.sfxge_softc* %20)
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @efx_nic_reset(i32 %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %42, %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @sfxge_restart_attempts, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %32 = call i32 @sfxge_start(%struct.sfxge_softc* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %50

35:                                               ; preds = %30
  %36 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %37 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = call i32 @DELAY(i32 100000)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %47 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %34, %18
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %52 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %51)
  ret void
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_reset(i32) #1

declare dso_local i32 @sfxge_start(%struct.sfxge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
