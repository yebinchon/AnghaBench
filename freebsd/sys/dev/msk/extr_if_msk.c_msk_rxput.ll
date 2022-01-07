; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rxput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rxput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i64, %struct.TYPE_2__, i32, %struct.msk_softc* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.msk_softc = type { i32 }

@MCLBYTES = common dso_local global i64 0, align 8
@MSK_RX_BUF_ALIGN = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@PREF_UNIT_PUT_IDX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_rxput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_rxput(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %4 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %5 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %4, i32 0, i32 3
  %6 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  store %struct.msk_softc* %6, %struct.msk_softc** %3, align 8
  %7 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %8 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MCLBYTES, align 8
  %11 = load i64, i64* @MSK_RX_BUF_ALIGN, align 8
  %12 = sub nsw i64 %10, %11
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %20 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %24 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @bus_dmamap_sync(i32 %18, i32 %22, i32 %25)
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %29 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %33 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %37 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @bus_dmamap_sync(i32 %31, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %27, %14
  %41 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %42 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %43 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PREF_UNIT_PUT_IDX_REG, align 4
  %46 = call i32 @Y2_PREF_Q_ADDR(i32 %44, i32 %45)
  %47 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %48 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CSR_WRITE_2(%struct.msk_softc* %41, i32 %46, i32 %50)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @Y2_PREF_Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
