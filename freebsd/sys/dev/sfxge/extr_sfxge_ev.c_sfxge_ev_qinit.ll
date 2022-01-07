; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_evq**, i32, i64 }
%struct.sfxge_evq = type { i32, i32, i32, i8*, i32, i32*, i32, %struct.sfxge_softc* }

@SFXGE_RX_SCALE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"index >= SFXGE_RX_SCALE_MAX\00", align 1
@M_SFXGE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SFXGE_EVQ_INITIALIZED = common dso_local global i32 0, align 4
@SFXGE_EVQ_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_ev_qinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_qinit(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SFXGE_RX_SCALE_MAX, align 4
  %11 = icmp ult i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @M_SFXGE, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.sfxge_evq* @malloc(i32 56, i32 %14, i32 %17)
  store %struct.sfxge_evq* %18, %struct.sfxge_evq** %6, align 8
  %19 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %20 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %21 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %20, i32 0, i32 7
  store %struct.sfxge_softc* %19, %struct.sfxge_softc** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %24 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %26 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %27 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %26, i32 0, i32 1
  %28 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %28, i64 %30
  store %struct.sfxge_evq* %25, %struct.sfxge_evq** %31, align 8
  %32 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %33 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %32, i32 0, i32 6
  store i32* %33, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %2
  %37 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %38 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %41 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 3, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %39, %44
  %46 = add nsw i64 %45, 128
  %47 = call i8* @ROUNDUP_POW_OF_TWO(i64 %46)
  %48 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %49 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  br label %63

50:                                               ; preds = %2
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %52 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %55 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = add nsw i64 %58, 128
  %60 = call i8* @ROUNDUP_POW_OF_TWO(i64 %59)
  %61 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %62 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %50, %36
  %64 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %65 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %64, i32 0, i32 4
  %66 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %67 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %66, i32 0, i32 5
  store i32* %65, i32** %67, align 8
  %68 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %69 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %70 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @EFX_EVQ_SIZE(i8* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @sfxge_dma_alloc(%struct.sfxge_softc* %68, i32 %72, i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %97

78:                                               ; preds = %63
  %79 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %80 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %81 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @EFX_EVQ_NBUFS(i8* %82)
  %84 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %85 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %84, i32 0, i32 2
  %86 = call i32 @sfxge_sram_buf_tbl_alloc(%struct.sfxge_softc* %79, i32 %83, i32* %85)
  %87 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %88 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %89 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @device_get_nameunit(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @SFXGE_EVQ_LOCK_INIT(%struct.sfxge_evq* %87, i32 %91, i32 %92)
  %94 = load i32, i32* @SFXGE_EVQ_INITIALIZED, align 4
  %95 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %96 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %78, %76
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.sfxge_evq* @malloc(i32, i32, i32) #1

declare dso_local i8* @ROUNDUP_POW_OF_TWO(i64) #1

declare dso_local i32 @sfxge_dma_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @EFX_EVQ_SIZE(i8*) #1

declare dso_local i32 @sfxge_sram_buf_tbl_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @EFX_EVQ_NBUFS(i8*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK_INIT(%struct.sfxge_evq*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
