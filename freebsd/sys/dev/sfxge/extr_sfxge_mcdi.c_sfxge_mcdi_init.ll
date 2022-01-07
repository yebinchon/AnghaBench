; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_mcdi.c_sfxge_mcdi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_mcdi.c_sfxge_mcdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sfxge_mcdi, i32* }
%struct.sfxge_mcdi = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, %struct.sfxge_softc* }

@MCDI_CTL_SDU_LEN_MAX_V2 = common dso_local global i32 0, align 4
@SFXGE_MCDI_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"MCDI already initialized\00", align 1
@SFXGE_MCDI_INITIALIZED = common dso_local global i64 0, align 8
@sfxge_mcdi_execute = common dso_local global i32 0, align 4
@sfxge_mcdi_ev_cpl = common dso_local global i32 0, align 4
@sfxge_mcdi_exception = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@sfxge_mcdi_logger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_mcdi_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sfxge_mcdi*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %13, i32 0, i32 2
  store %struct.sfxge_mcdi* %14, %struct.sfxge_mcdi** %5, align 8
  %15 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %16 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %15, i32 0, i32 2
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %18 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %17, i32 0, i32 1
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @MCDI_CTL_SDU_LEN_MAX_V2, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %24 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SFXGE_MCDI_UNINITIALIZED, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_get_nameunit(i32 %33)
  %35 = call i32 @SFXGE_MCDI_LOCK_INIT(%struct.sfxge_mcdi* %30, i32 %34)
  %36 = load i64, i64* @SFXGE_MCDI_INITIALIZED, align 8
  %37 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %38 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @sfxge_dma_alloc(%struct.sfxge_softc* %39, i32 %40, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %67

45:                                               ; preds = %1
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  store %struct.sfxge_softc* %46, %struct.sfxge_softc** %48, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @sfxge_mcdi_execute, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @sfxge_mcdi_ev_cpl, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @sfxge_mcdi_exception, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = call i32 @efx_mcdi_init(i32* %61, %struct.TYPE_3__* %62)
  store i32 %63, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %67

66:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %74

67:                                               ; preds = %65, %44
  %68 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %69 = call i32 @SFXGE_MCDI_LOCK_DESTROY(%struct.sfxge_mcdi* %68)
  %70 = load i64, i64* @SFXGE_MCDI_UNINITIALIZED, align 8
  %71 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %5, align 8
  %72 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %66
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SFXGE_MCDI_LOCK_INIT(%struct.sfxge_mcdi*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @sfxge_dma_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @efx_mcdi_init(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @SFXGE_MCDI_LOCK_DESTROY(%struct.sfxge_mcdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
