; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_dmamap_dstwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_dmamap_dstwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { %struct.hifn_dma* }
%struct.hifn_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIFN_D_DST_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_JUMP = common dso_local global i32 0, align 4
@HIFN_D_MASKDONEIRQ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*, i32)* @hifn_dmamap_dstwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_dmamap_dstwrap(%struct.hifn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hifn_dma*, align 8
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %6, i32 0, i32 0
  %8 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  store %struct.hifn_dma* %8, %struct.hifn_dma** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @HIFN_D_DST_RSIZE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @HIFN_D_VALID, align 4
  %15 = load i32, i32* @HIFN_D_JUMP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @htole32(i32 %18)
  %20 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %21 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %19, i32* %26, align 4
  %27 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %30 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @HIFN_DSTR_SYNC(%struct.hifn_softc* %27, i32 %28, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %13, %2
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @HIFN_DSTR_SYNC(%struct.hifn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
