; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_rssi_bcm2053.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_rssi_bcm2053.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }
%struct.bwi_rxbuf_hdr = type { i32, i64 }

@BWI_RXH_F1_BCM2053_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, %struct.bwi_rxbuf_hdr*)* @bwi_rf_calc_rssi_bcm2053 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_calc_rssi_bcm2053(%struct.bwi_mac* %0, %struct.bwi_rxbuf_hdr* %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_rxbuf_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store %struct.bwi_rxbuf_hdr* %1, %struct.bwi_rxbuf_hdr** %4, align 8
  %7 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = sub nsw i32 %10, 11
  %12 = mul nsw i32 %11, 103
  %13 = sdiv i32 %12, 64
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bwi_rxbuf_hdr*, %struct.bwi_rxbuf_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.bwi_rxbuf_hdr, %struct.bwi_rxbuf_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le16toh(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BWI_RXH_F1_BCM2053_RSSI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 109
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 83
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
