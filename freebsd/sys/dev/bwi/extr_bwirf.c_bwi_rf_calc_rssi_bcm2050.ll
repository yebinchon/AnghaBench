; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_rssi_bcm2050.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_rssi_bcm2050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.bwi_rf }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bwi_rf = type { i64* }
%struct.bwi_rxbuf_hdr = type { i32, i32, i32, i32 }

@BWI_RXH_F1_OFDM = common dso_local global i32 0, align 4
@BWI_RXH_F3_BCM2050_RSSI = common dso_local global i32 0, align 4
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@BWI_NRSSI_TBLSZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@BWI_RXH_PHYINFO_LNAGAIN = common dso_local global i32 0, align 4
@BWI_DBG_RF = common dso_local global i32 0, align 4
@BWI_DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lna_gain %d, phyinfo 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"impossible lna gain %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, %struct.bwi_rxbuf_hdr*)* @bwi_rf_calc_rssi_bcm2050 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_calc_rssi_bcm2050(%struct.bwi_mac* %0, %struct.bwi_rxbuf_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca %struct.bwi_rxbuf_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bwi_rf*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store %struct.bwi_rxbuf_hdr* %1, %struct.bwi_rxbuf_hdr** %5, align 8
  %11 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16toh(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16toh(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BWI_RXH_F1_OFDM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 256
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BWI_RXH_F3_BCM2050_RSSI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 17
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %138

45:                                               ; preds = %2
  %46 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %47 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %56 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %55, i32 0, i32 2
  store %struct.bwi_rf* %56, %struct.bwi_rf** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BWI_NRSSI_TBLSZ, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @BWI_NRSSI_TBLSZ, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.bwi_rf*, %struct.bwi_rf** %10, align 8
  %65 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = sub nsw i32 31, %71
  %73 = mul nsw i32 %72, -131
  %74 = sdiv i32 %73, 128
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 67
  store i32 %76, i32* %8, align 4
  br label %84

77:                                               ; preds = %45
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 31, %78
  %80 = mul nsw i32 %79, -149
  %81 = sdiv i32 %80, 128
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 68
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %77, %63
  %85 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %86 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %138

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @BWI_RXH_F3_BCM2050_RSSI, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 20
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %5, align 8
  %103 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16toh(i32 %104)
  %106 = load i32, i32* @BWI_RXH_PHYINFO_LNAGAIN, align 4
  %107 = call i32 @__SHIFTOUT(i32 %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %109 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* @BWI_DBG_RF, align 4
  %112 = load i32, i32* @BWI_DBG_RX, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %5, align 8
  %116 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16toh(i32 %117)
  %119 = call i32 @DPRINTF(%struct.TYPE_4__* %110, i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %118)
  %120 = load i32, i32* %9, align 4
  switch i32 %120, label %133 [
    i32 0, label %121
    i32 1, label %124
    i32 2, label %127
    i32 3, label %130
  ]

121:                                              ; preds = %101
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 27
  store i32 %123, i32* %8, align 4
  br label %136

124:                                              ; preds = %101
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 6
  store i32 %126, i32* %8, align 4
  br label %136

127:                                              ; preds = %101
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 12
  store i32 %129, i32* %8, align 4
  br label %136

130:                                              ; preds = %101
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 5
  store i32 %132, i32* %8, align 4
  br label %136

133:                                              ; preds = %101
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %130, %127, %124, %121
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %91, %43
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
