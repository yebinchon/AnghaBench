; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_tx_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i64, %struct.upgt_data* }
%struct.upgt_data = type { i64, i32*, i32* }
%struct.upgt_lmac_tx_done_desc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UPGT_TX_MAXCOUNT = common dso_local global i32 0, align 4
@UPGT_DEBUG_TX_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"TX done: memaddr=0x%08x, status=0x%04x, rssi=%d, \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"seq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*, i32*)* @upgt_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_tx_done(%struct.upgt_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.upgt_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.upgt_lmac_tx_done_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.upgt_data*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %10 = call i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.upgt_lmac_tx_done_desc*
  store %struct.upgt_lmac_tx_done_desc* %12, %struct.upgt_lmac_tx_done_desc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %72, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UPGT_TX_MAXCOUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %13
  %18 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %18, i32 0, i32 1
  %20 = load %struct.upgt_data*, %struct.upgt_data** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %20, i64 %22
  store %struct.upgt_data* %23, %struct.upgt_data** %8, align 8
  %24 = load %struct.upgt_data*, %struct.upgt_data** %8, align 8
  %25 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.upgt_lmac_tx_done_desc*, %struct.upgt_lmac_tx_done_desc** %5, align 8
  %28 = getelementptr inbounds %struct.upgt_lmac_tx_done_desc, %struct.upgt_lmac_tx_done_desc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32toh(i32 %30)
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %17
  %34 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %35 = load %struct.upgt_data*, %struct.upgt_data** %8, align 8
  %36 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @upgt_mem_free(%struct.upgt_softc* %34, i64 %37)
  %39 = load %struct.upgt_data*, %struct.upgt_data** %8, align 8
  %40 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.upgt_data*, %struct.upgt_data** %8, align 8
  %42 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.upgt_data*, %struct.upgt_data** %8, align 8
  %44 = getelementptr inbounds %struct.upgt_data, %struct.upgt_data* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %46 = load i32, i32* @UPGT_DEBUG_TX_PROC, align 4
  %47 = load %struct.upgt_lmac_tx_done_desc*, %struct.upgt_lmac_tx_done_desc** %5, align 8
  %48 = getelementptr inbounds %struct.upgt_lmac_tx_done_desc, %struct.upgt_lmac_tx_done_desc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32toh(i32 %50)
  %52 = load %struct.upgt_lmac_tx_done_desc*, %struct.upgt_lmac_tx_done_desc** %5, align 8
  %53 = getelementptr inbounds %struct.upgt_lmac_tx_done_desc, %struct.upgt_lmac_tx_done_desc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16toh(i32 %54)
  %56 = load %struct.upgt_lmac_tx_done_desc*, %struct.upgt_lmac_tx_done_desc** %5, align 8
  %57 = getelementptr inbounds %struct.upgt_lmac_tx_done_desc, %struct.upgt_lmac_tx_done_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16toh(i32 %58)
  %60 = call i32 (%struct.upgt_softc*, i32, i8*, i64, ...) @DPRINTF(%struct.upgt_softc* %45, i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %55, i32 %59)
  %61 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %62 = load i32, i32* @UPGT_DEBUG_TX_PROC, align 4
  %63 = load %struct.upgt_lmac_tx_done_desc*, %struct.upgt_lmac_tx_done_desc** %5, align 8
  %64 = getelementptr inbounds %struct.upgt_lmac_tx_done_desc, %struct.upgt_lmac_tx_done_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16toh(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = call i32 (%struct.upgt_softc*, i32, i8*, i64, ...) @DPRINTF(%struct.upgt_softc* %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %33, %17
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %13

75:                                               ; preds = %13
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %80 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %79)
  %81 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %82 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %84 = call i32 @upgt_start(%struct.upgt_softc* %83)
  %85 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %86 = call i32 @UPGT_LOCK(%struct.upgt_softc* %85)
  br label %87

87:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc*) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @upgt_mem_free(%struct.upgt_softc*, i64) #1

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i64, ...) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @UPGT_UNLOCK(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_start(%struct.upgt_softc*) #1

declare dso_local i32 @UPGT_LOCK(%struct.upgt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
