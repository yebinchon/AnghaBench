; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i64*, i32* }
%struct.bnxt_softc = type { %struct.bnxt_ring*, %struct.bnxt_ring* }
%struct.bnxt_ring = type { i64, i64 }
%struct.rx_prod_pkt_bd = type { i64, i32, i8*, i8* }

@RX_PROD_PKT_BD_TYPE_RX_PROD_PKT = common dso_local global i64 0, align 8
@RX_PROD_AGG_BD_TYPE_RX_PROD_AGG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*)* @bnxt_isc_rxd_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_isc_rxd_refill(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca %struct.bnxt_ring*, align 8
  %7 = alloca %struct.rx_prod_pkt_bd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.bnxt_softc*
  store %struct.bnxt_softc* %18, %struct.bnxt_softc** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %15, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %16, align 8
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %44 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %43, i32 0, i32 1
  %45 = load %struct.bnxt_ring*, %struct.bnxt_ring** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %45, i64 %46
  store %struct.bnxt_ring* %47, %struct.bnxt_ring** %6, align 8
  %48 = load i64, i64* @RX_PROD_PKT_BD_TYPE_RX_PROD_PKT, align 8
  store i64 %48, i64* %8, align 8
  br label %56

49:                                               ; preds = %2
  %50 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %51 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %50, i32 0, i32 0
  %52 = load %struct.bnxt_ring*, %struct.bnxt_ring** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %52, i64 %53
  store %struct.bnxt_ring* %54, %struct.bnxt_ring** %6, align 8
  %55 = load i64, i64* @RX_PROD_AGG_BD_TYPE_RX_PROD_AGG, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %58 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = bitcast i8* %60 to %struct.rx_prod_pkt_bd*
  store %struct.rx_prod_pkt_bd* %61, %struct.rx_prod_pkt_bd** %7, align 8
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %112, %56
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = call i8* @htole16(i64 %67)
  %69 = load %struct.rx_prod_pkt_bd*, %struct.rx_prod_pkt_bd** %7, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %69, i64 %70
  %72 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %71, i32 0, i32 3
  store i8* %68, i8** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i8* @htole16(i64 %73)
  %75 = load %struct.rx_prod_pkt_bd*, %struct.rx_prod_pkt_bd** %7, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %75, i64 %76
  %78 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %77, i32 0, i32 2
  store i8* %74, i8** %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = and i64 %79, 255
  %81 = shl i64 %80, 24
  %82 = load i32, i32* %14, align 4
  %83 = shl i32 %82, 16
  %84 = sext i32 %83 to i64
  %85 = or i64 %81, %84
  %86 = load i64*, i64** %16, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %85, %89
  %91 = load %struct.rx_prod_pkt_bd*, %struct.rx_prod_pkt_bd** %7, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %91, i64 %92
  %94 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @htole64(i32 %98)
  %100 = load %struct.rx_prod_pkt_bd*, %struct.rx_prod_pkt_bd** %7, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %100, i64 %101
  %103 = getelementptr inbounds %struct.rx_prod_pkt_bd, %struct.rx_prod_pkt_bd* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 8
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %13, align 8
  %106 = load %struct.bnxt_ring*, %struct.bnxt_ring** %6, align 8
  %107 = getelementptr inbounds %struct.bnxt_ring, %struct.bnxt_ring* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %66
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %110, %66
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %62

115:                                              ; preds = %62
  ret void
}

declare dso_local i8* @htole16(i64) #1

declare dso_local i32 @htole64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
