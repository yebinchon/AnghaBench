; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i32, %struct.bfe_rx_data*, i32, i64, i64 }
%struct.bfe_rx_data = type { i64, i32* }

@BFE_RX_LIST_SIZE = common dso_local global i32 0, align 4
@BFE_RX_LIST_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BFE_DMARX_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfe_softc*)* @bfe_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_list_rx_init(%struct.bfe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca %struct.bfe_rx_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %3, align 8
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BFE_RX_LIST_SIZE, align 4
  %14 = call i32 @bzero(i32 %12, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BFE_RX_LIST_CNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %20, i32 0, i32 2
  %22 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %22, i64 %24
  store %struct.bfe_rx_data* %25, %struct.bfe_rx_data** %4, align 8
  %26 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %27 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.bfe_rx_data*, %struct.bfe_rx_data** %4, align 8
  %29 = getelementptr inbounds %struct.bfe_rx_data, %struct.bfe_rx_data* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @bfe_list_newbuf(%struct.bfe_softc* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @ENOBUFS, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %48 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @bus_dmamap_sync(i32 %43, i32 %46, i32 %49)
  %51 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %52 = load i32, i32* @BFE_DMARX_PTR, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %51, i32 %52, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %40, %34
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @bfe_list_newbuf(%struct.bfe_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
