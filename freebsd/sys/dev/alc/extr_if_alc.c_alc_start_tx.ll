; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_start_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_MBOX_TD_PRI0_PROD_IDX = common dso_local global i32 0, align 4
@ALC_MBOX_TD_PROD_IDX = common dso_local global i32 0, align 4
@MBOX_TD_PROD_LO_IDX_SHIFT = common dso_local global i32 0, align 4
@MBOX_TD_PROD_LO_IDX_MASK = common dso_local global i32 0, align 4
@ALC_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_start_tx(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %3 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %12 = call i32 @bus_dmamap_sync(i32 %6, i32 %10, i32 %11)
  %13 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %21 = load i32, i32* @ALC_MBOX_TD_PRI0_PROD_IDX, align 4
  %22 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CSR_WRITE_2(%struct.alc_softc* %20, i32 %21, i32 %25)
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %29 = load i32, i32* @ALC_MBOX_TD_PROD_IDX, align 4
  %30 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %31 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MBOX_TD_PROD_LO_IDX_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @MBOX_TD_PROD_LO_IDX_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @CSR_WRITE_4(%struct.alc_softc* %28, i32 %29, i32 %37)
  br label %39

39:                                               ; preds = %27, %19
  %40 = load i32, i32* @ALC_TX_TIMEOUT, align 4
  %41 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
