; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_espi_softc = type { i64, i64, %struct.spi_command* }
%struct.spi_command = type { i64, i64, i64 }

@ESPI_SPIE = common dso_local global i32 0, align 4
@ESPI_SPIE_RNE = common dso_local global i64 0, align 8
@ESPI_SPIRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_espi_softc*)* @fsl_espi_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_espi_drain_fifo(%struct.fsl_espi_softc* %0) #0 {
  %2 = alloca %struct.fsl_espi_softc*, align 8
  %3 = alloca %struct.spi_command*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_espi_softc* %0, %struct.fsl_espi_softc** %2, align 8
  %8 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %8, i32 0, i32 2
  %10 = load %struct.spi_command*, %struct.spi_command** %9, align 8
  store %struct.spi_command* %10, %struct.spi_command** %3, align 8
  %11 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %12 = load i32, i32* @ESPI_SPIE, align 4
  %13 = call i64 @FSL_ESPI_READ(%struct.fsl_espi_softc* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %53, %1
  %15 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @ESPI_SPIE_RNE, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %14
  %28 = phi i1 [ false, %14 ], [ %26, %22 ]
  br i1 %28, label %29, label %64

29:                                               ; preds = %27
  %30 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %31 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %6, align 8
  %34 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %40 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %45 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %6, align 8
  %48 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %49 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %43, %29
  %54 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %55 = load i32, i32* @ESPI_SPIRF, align 4
  %56 = call i32 @FSL_ESPI_READ_FIFO(%struct.fsl_espi_softc* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %62 = load i32, i32* @ESPI_SPIE, align 4
  %63 = call i64 @FSL_ESPI_READ(%struct.fsl_espi_softc* %61, i32 %62)
  store i64 %63, i64* %4, align 8
  br label %14

64:                                               ; preds = %27
  ret void
}

declare dso_local i64 @FSL_ESPI_READ(%struct.fsl_espi_softc*, i32) #1

declare dso_local i32 @FSL_ESPI_READ_FIFO(%struct.fsl_espi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
