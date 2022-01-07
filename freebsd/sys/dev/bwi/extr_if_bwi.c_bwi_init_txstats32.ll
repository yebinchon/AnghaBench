; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init_txstats32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init_txstats32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.bwi_txstats_data* }
%struct.bwi_txstats_data = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@BWI_TXSTATS_NDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*)* @bwi_init_txstats32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_init_txstats32(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca %struct.bwi_txstats_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %6 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %6, i32 0, i32 0
  %8 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %7, align 8
  store %struct.bwi_txstats_data* %8, %struct.bwi_txstats_data** %3, align 8
  %9 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @bzero(i32 %11, i32 %15)
  %17 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %18 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %21 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %24 = call i32 @bus_dmamap_sync(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %28 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %36 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %37 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bwi_setup_desc32(%struct.bwi_softc* %35, i32 %38, i32 %39, i32 %40, i32 %41, i32 4, i32 0)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %52 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %55 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %58 = call i32 @bus_dmamap_sync(i32 %53, i32 %56, i32 %57)
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %60 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %61 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %64 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %67 = call i32 @bwi_init_rxdesc_ring32(%struct.bwi_softc* %59, i32 %62, i32 %65, i32 0, i32 %66)
  ret i32 0
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bwi_setup_desc32(%struct.bwi_softc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bwi_init_rxdesc_ring32(%struct.bwi_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
