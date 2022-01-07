; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_setup_xdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_setup_xdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.aic_softc*, %struct.sc_chinfo* }
%struct.aic_softc = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sc_chinfo = type { i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"16-bit audio supported only.\00", align 1
@XDMA_CYCLIC = common dso_local global i32 0, align 4
@XR_TYPE_PHYS = common dso_local global i32 0, align 4
@XDMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't configure virtual channel\0A\00", align 1
@XDMA_CMD_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_pcminfo*)* @setup_xdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_xdma(%struct.sc_pcminfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_pcminfo*, align 8
  %4 = alloca %struct.aic_softc*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc_pcminfo* %0, %struct.sc_pcminfo** %3, align 8
  %8 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %9 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %8, i32 0, i32 1
  %10 = load %struct.sc_chinfo*, %struct.sc_chinfo** %9, align 8
  %11 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %10, i64 0
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %5, align 8
  %12 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %13 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %12, i32 0, i32 0
  %14 = load %struct.aic_softc*, %struct.aic_softc** %13, align 8
  store %struct.aic_softc* %14, %struct.aic_softc** %4, align 8
  %15 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %16 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sndbuf_getfmt(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AFMT_16BIT, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @XDMA_CYCLIC, align 4
  %24 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %25 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @XR_TYPE_PHYS, align 4
  %28 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %29 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @XDMA_MEM_TO_DEV, align 4
  %32 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %33 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i32 %31, i32* %34, align 4
  %35 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %36 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %42 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %45 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %48 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 2, i32* %49, align 4
  %50 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %51 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 2, i32* %52, align 4
  %53 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %54 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sndbuf_getblksz(i32 %55)
  %57 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %58 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %61 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sndbuf_getblkcnt(i32 %62)
  %64 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %65 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %68 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %71 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %70, i32 0, i32 2
  %72 = call i32 @xdma_request(i32 %69, %struct.TYPE_2__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %1
  %76 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %77 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %86

80:                                               ; preds = %1
  %81 = load %struct.aic_softc*, %struct.aic_softc** %4, align 8
  %82 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @XDMA_CMD_BEGIN, align 4
  %85 = call i32 @xdma_control(i32 %83, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @sndbuf_getfmt(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

declare dso_local i32 @sndbuf_getblkcnt(i32) #1

declare dso_local i32 @xdma_request(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xdma_control(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
