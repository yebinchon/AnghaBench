; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_intr }
%struct.sfxge_intr = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Interrupts not initialized\00", align 1
@EFX_INTR_SIZE = common dso_local global i32 0, align 4
@SFXGE_INTR_STARTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_intr_start(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 1
  store %struct.sfxge_intr* %8, %struct.sfxge_intr** %4, align 8
  %9 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %10 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %9, i32 0, i32 2
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %12 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EFX_INTR_SIZE, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %27 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = call i32 @efx_intr_init(i32 %25, i32 %28, %struct.TYPE_3__* %29)
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %32 = call i32 @sfxge_intr_bus_enable(%struct.sfxge_softc* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %43

35:                                               ; preds = %1
  %36 = load i64, i64* @SFXGE_INTR_STARTED, align 8
  %37 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %38 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @efx_intr_enable(i32 %41)
  store i32 0, i32* %2, align 4
  br label %52

43:                                               ; preds = %34
  %44 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @efx_intr_fini(i32 %46)
  %48 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %49 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %50 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %35
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @efx_intr_init(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @sfxge_intr_bus_enable(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_intr_enable(i32) #1

declare dso_local i32 @efx_intr_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
