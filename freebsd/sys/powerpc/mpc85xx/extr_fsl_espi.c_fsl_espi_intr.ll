; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_espi_softc = type { i32, i32 }

@FSL_ESPI_BUSY = common dso_local global i32 0, align 4
@ESPI_SPIE = common dso_local global i32 0, align 4
@ESPI_SPIE_DON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fsl_espi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_espi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsl_espi_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fsl_espi_softc*
  store %struct.fsl_espi_softc* %6, %struct.fsl_espi_softc** %3, align 8
  %7 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %8 = call i32 @FSL_ESPI_LOCK(%struct.fsl_espi_softc* %7)
  %9 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FSL_ESPI_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %17 = call i32 @FSL_ESPI_UNLOCK(%struct.fsl_espi_softc* %16)
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %20 = load i32, i32* @ESPI_SPIE, align 4
  %21 = call i32 @FSL_ESPI_READ(%struct.fsl_espi_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %23 = load i32, i32* @ESPI_SPIE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %27 = call i32 @fsl_espi_fill_fifo(%struct.fsl_espi_softc* %26)
  %28 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %29 = call i32 @fsl_espi_drain_fifo(%struct.fsl_espi_softc* %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ESPI_SPIE_DON, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wakeup(i32 %37)
  br label %39

39:                                               ; preds = %34, %18
  %40 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %3, align 8
  %41 = call i32 @FSL_ESPI_UNLOCK(%struct.fsl_espi_softc* %40)
  br label %42

42:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @FSL_ESPI_LOCK(%struct.fsl_espi_softc*) #1

declare dso_local i32 @FSL_ESPI_UNLOCK(%struct.fsl_espi_softc*) #1

declare dso_local i32 @FSL_ESPI_READ(%struct.fsl_espi_softc*, i32) #1

declare dso_local i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc*, i32, i32) #1

declare dso_local i32 @fsl_espi_fill_fifo(%struct.fsl_espi_softc*) #1

declare dso_local i32 @fsl_espi_drain_fifo(%struct.fsl_espi_softc*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
