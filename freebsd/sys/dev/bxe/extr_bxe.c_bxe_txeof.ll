; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i64, i64, i64, i64, i32, i32* }

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TX: fp[%d]: hw_cons=%u sw_cons=%u pkt_cons=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"TX done: fp[%d]: hw_cons=%u sw_cons=%u sw_prod=%u\0A\00", align 1
@BXE_TX_CLEANUP_THRESHOLD = common dso_local global i64 0, align 8
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BXE_TX_TIMEOUT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.bxe_fastpath*)* @bxe_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_txeof(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.bxe_fastpath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %5, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %16 = call i32 @BXE_FP_TX_LOCK_ASSERT(%struct.bxe_fastpath* %15)
  %17 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %18 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %21 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16toh(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %26 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %32, %2
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @TX_BD(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = load i32, i32* @DBG_TX, align 4
  %37 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %38 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @BLOGD(%struct.bxe_softc* %35, i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40, i64 %41, i64 %42)
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %45 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @bxe_free_tx_pkt(%struct.bxe_softc* %44, %struct.bxe_fastpath* %45, i64 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %53 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %56 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %58 = load i32, i32* @DBG_TX, align 4
  %59 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %60 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %64 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %67 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @BLOGD(%struct.bxe_softc* %57, i32 %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62, i64 %65, i64 %68)
  %70 = call i32 (...) @mb()
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %72 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %73 = call i64 @bxe_tx_avail(%struct.bxe_softc* %71, %struct.bxe_fastpath* %72)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @BXE_TX_CLEANUP_THRESHOLD, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %50
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %80 = call i32 @if_setdrvflagbits(i32 %78, i32 %79, i32 0)
  br label %85

81:                                               ; preds = %50
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %84 = call i32 @if_setdrvflagbits(i32 %82, i32 0, i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %87 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %90 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i64, i64* @BXE_TX_TIMEOUT, align 8
  %95 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %96 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %102

98:                                               ; preds = %85
  %99 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %100 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @BXE_FP_TX_LOCK_ASSERT(%struct.bxe_fastpath*) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i64 @TX_BD(i64) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64, i64, i64) #1

declare dso_local i64 @bxe_free_tx_pkt(%struct.bxe_softc*, %struct.bxe_fastpath*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @bxe_tx_avail(%struct.bxe_softc*, %struct.bxe_fastpath*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
