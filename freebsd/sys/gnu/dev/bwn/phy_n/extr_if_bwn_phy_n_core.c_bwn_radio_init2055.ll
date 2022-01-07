; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_init2055.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_init2055.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i64 }

@BWN_MAC_STATUS_INITED = common dso_local global i64 0, align 8
@BWN_BAND_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_radio_init2055 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_radio_init2055(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = call i32 @bwn_radio_init2055_pre(%struct.bwn_mac* %4)
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BWN_MAC_STATUS_INITED, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = call i32 @b2055_upload_inittab(%struct.bwn_mac* %12, i32 0, i32 0)
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %16 = call i64 @bwn_current_band(%struct.bwn_mac* %15)
  %17 = load i64, i64* @BWN_BAND_5G, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @b2055_upload_inittab(%struct.bwn_mac* %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %14, %11
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %25 = call i32 @bwn_radio_init2055_post(%struct.bwn_mac* %24)
  ret void
}

declare dso_local i32 @bwn_radio_init2055_pre(%struct.bwn_mac*) #1

declare dso_local i32 @b2055_upload_inittab(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_radio_init2055_post(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
