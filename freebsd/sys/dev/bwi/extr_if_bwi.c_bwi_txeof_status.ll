; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_txeof_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_txeof_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.bwi_txstats_data* }
%struct.bwi_txstats_data = type { i32, %struct.bwi_txstats*, i32, i32 }
%struct.bwi_txstats = type { i32, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BWI_TXS_F_PENDING = common dso_local global i32 0, align 4
@BWI_TXS_TXCNT_DATA = common dso_local global i32 0, align 4
@BWI_TXS_F_ACKED = common dso_local global i32 0, align 4
@BWI_TXSTATS_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32)* @bwi_txeof_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_txeof_status(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_txstats_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_txstats*, align 8
  %8 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 0
  %11 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %10, align 8
  store %struct.bwi_txstats_data* %11, %struct.bwi_txstats_data** %5, align 8
  %12 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %5, align 8
  %13 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %5, align 8
  %16 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %19 = call i32 @bus_dmamap_sync(i32 %14, i32 %17, i32 %18)
  %20 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %5, align 8
  %21 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %58, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %5, align 8
  %29 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %28, i32 0, i32 1
  %30 = load %struct.bwi_txstats*, %struct.bwi_txstats** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bwi_txstats, %struct.bwi_txstats* %30, i64 %32
  store %struct.bwi_txstats* %33, %struct.bwi_txstats** %7, align 8
  %34 = load %struct.bwi_txstats*, %struct.bwi_txstats** %7, align 8
  %35 = getelementptr inbounds %struct.bwi_txstats, %struct.bwi_txstats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BWI_TXS_F_PENDING, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %27
  %41 = load %struct.bwi_txstats*, %struct.bwi_txstats** %7, align 8
  %42 = getelementptr inbounds %struct.bwi_txstats, %struct.bwi_txstats* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BWI_TXS_TXCNT_DATA, align 4
  %45 = call i32 @__SHIFTOUT(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %47 = load %struct.bwi_txstats*, %struct.bwi_txstats** %7, align 8
  %48 = getelementptr inbounds %struct.bwi_txstats, %struct.bwi_txstats* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16toh(i32 %49)
  %51 = load %struct.bwi_txstats*, %struct.bwi_txstats** %7, align 8
  %52 = getelementptr inbounds %struct.bwi_txstats, %struct.bwi_txstats* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BWI_TXS_F_ACKED, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @_bwi_txeof(%struct.bwi_softc* %46, i32 %50, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %40, %27
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %6, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %5, align 8
  %66 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @_bwi_txeof(%struct.bwi_softc*, i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
