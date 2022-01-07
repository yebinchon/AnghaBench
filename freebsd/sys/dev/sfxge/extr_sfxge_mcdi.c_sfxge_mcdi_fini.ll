; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_mcdi.c_sfxge_mcdi_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_mcdi.c_sfxge_mcdi_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_mcdi, i32* }
%struct.sfxge_mcdi = type { i64, i32, i32 }

@SFXGE_MCDI_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"MCDI not initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_mcdi_fini(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_mcdi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 0
  store %struct.sfxge_mcdi* %11, %struct.sfxge_mcdi** %3, align 8
  %12 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %12, i32 0, i32 2
  store i32* %13, i32** %5, align 8
  %14 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %3, align 8
  %15 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %14, i32 0, i32 1
  store i32* %15, i32** %6, align 8
  %16 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %3, align 8
  %17 = call i32 @SFXGE_MCDI_LOCK(%struct.sfxge_mcdi* %16)
  %18 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %3, align 8
  %19 = getelementptr inbounds %struct.sfxge_mcdi, %struct.sfxge_mcdi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SFXGE_MCDI_INITIALIZED, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @efx_mcdi_fini(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @bzero(i32* %27, i32 4)
  %29 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %3, align 8
  %30 = call i32 @SFXGE_MCDI_UNLOCK(%struct.sfxge_mcdi* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @sfxge_dma_free(i32* %31)
  %33 = load %struct.sfxge_mcdi*, %struct.sfxge_mcdi** %3, align 8
  %34 = call i32 @SFXGE_MCDI_LOCK_DESTROY(%struct.sfxge_mcdi* %33)
  ret void
}

declare dso_local i32 @SFXGE_MCDI_LOCK(%struct.sfxge_mcdi*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_mcdi_fini(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @SFXGE_MCDI_UNLOCK(%struct.sfxge_mcdi*) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

declare dso_local i32 @SFXGE_MCDI_LOCK_DESTROY(%struct.sfxge_mcdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
