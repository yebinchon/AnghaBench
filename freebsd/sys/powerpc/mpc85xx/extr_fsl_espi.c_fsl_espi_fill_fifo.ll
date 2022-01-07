; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_espi_softc = type { i64, i64, %struct.spi_command* }
%struct.spi_command = type { i64, i64, i64 }

@ESPI_SPIE = common dso_local global i32 0, align 4
@ESPI_SPIE_TNF = common dso_local global i64 0, align 8
@ESPI_SPITF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_espi_softc*)* @fsl_espi_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_espi_fill_fifo(%struct.fsl_espi_softc* %0) #0 {
  %2 = alloca %struct.fsl_espi_softc*, align 8
  %3 = alloca %struct.spi_command*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.fsl_espi_softc* %0, %struct.fsl_espi_softc** %2, align 8
  %7 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %7, i32 0, i32 2
  %9 = load %struct.spi_command*, %struct.spi_command** %8, align 8
  store %struct.spi_command* %9, %struct.spi_command** %3, align 8
  %10 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %11 = load i32, i32* @ESPI_SPIE, align 4
  %12 = call i64 @FSL_ESPI_READ(%struct.fsl_espi_softc* %10, i32 %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %52, %1
  %14 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %18 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @ESPI_SPIE_TNF, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i1 [ false, %13 ], [ %25, %21 ]
  br i1 %27, label %28, label %63

28:                                               ; preds = %26
  %29 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %30 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %39 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %28
  %43 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %44 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %6, align 8
  %47 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %48 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %42, %28
  %53 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %54 = load i32, i32* @ESPI_SPITF, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FSL_ESPI_WRITE_FIFO(%struct.fsl_espi_softc* %53, i32 %54, i32 %58)
  %60 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %2, align 8
  %61 = load i32, i32* @ESPI_SPIE, align 4
  %62 = call i64 @FSL_ESPI_READ(%struct.fsl_espi_softc* %60, i32 %61)
  store i64 %62, i64* %4, align 8
  br label %13

63:                                               ; preds = %26
  ret void
}

declare dso_local i64 @FSL_ESPI_READ(%struct.fsl_espi_softc*, i32) #1

declare dso_local i32 @FSL_ESPI_WRITE_FIFO(%struct.fsl_espi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
