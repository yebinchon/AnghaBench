; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_chan_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_chan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdma_softc = type { i32 }
%struct.pdma_channel = type { i32, i32, i32, %struct.xdma_channel* }
%struct.xdma_channel = type { i32 }

@DCS_DES8 = common dso_local global i32 0, align 4
@PDMA_DDS = common dso_local global i32 0, align 4
@DCS_CTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdma_softc*, %struct.pdma_channel*)* @chan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_start(%struct.pdma_softc* %0, %struct.pdma_channel* %1) #0 {
  %3 = alloca %struct.pdma_softc*, align 8
  %4 = alloca %struct.pdma_channel*, align 8
  %5 = alloca %struct.xdma_channel*, align 8
  store %struct.pdma_softc* %0, %struct.pdma_softc** %3, align 8
  store %struct.pdma_channel* %1, %struct.pdma_channel** %4, align 8
  %6 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %7 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %6, i32 0, i32 3
  %8 = load %struct.xdma_channel*, %struct.xdma_channel** %7, align 8
  store %struct.xdma_channel* %8, %struct.xdma_channel** %5, align 8
  %9 = load %struct.pdma_softc*, %struct.pdma_softc** %3, align 8
  %10 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %11 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @PDMA_DCS(i32 %12)
  %14 = load i32, i32* @DCS_DES8, align 4
  %15 = call i32 @WRITE4(%struct.pdma_softc* %9, i32 %13, i32 %14)
  %16 = load %struct.pdma_softc*, %struct.pdma_softc** %3, align 8
  %17 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %18 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PDMA_DDA(i32 %19)
  %21 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %22 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %25 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 32, %26
  %28 = add nsw i32 %23, %27
  %29 = call i32 @WRITE4(%struct.pdma_softc* %16, i32 %20, i32 %28)
  %30 = load %struct.pdma_softc*, %struct.pdma_softc** %3, align 8
  %31 = load i32, i32* @PDMA_DDS, align 4
  %32 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %33 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  %36 = call i32 @WRITE4(%struct.pdma_softc* %30, i32 %31, i32 %35)
  %37 = load %struct.pdma_softc*, %struct.pdma_softc** %3, align 8
  %38 = load %struct.pdma_channel*, %struct.pdma_channel** %4, align 8
  %39 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PDMA_DCS(i32 %40)
  %42 = load i32, i32* @DCS_DES8, align 4
  %43 = load i32, i32* @DCS_CTE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @WRITE4(%struct.pdma_softc* %37, i32 %41, i32 %44)
  ret i32 0
}

declare dso_local i32 @WRITE4(%struct.pdma_softc*, i32, i32) #1

declare dso_local i32 @PDMA_DCS(i32) #1

declare dso_local i32 @PDMA_DDA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
