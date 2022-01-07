; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_temp_offset_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_temp_offset_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i64 }
%struct.iwn5000_phy_calib_temp_offset = type { i32, i32, i8*, i32 }

@IWN5000_PHY_CALIB_TEMP_OFFSET = common dso_local global i32 0, align 4
@IWN_DEFAULT_TEMP_OFFSET = common dso_local global i64 0, align 8
@IWN_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"setting radio sensor offset to %d\0A\00", align 1
@IWN_CMD_PHY_CALIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*)* @iwn5000_temp_offset_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn5000_temp_offset_calib(%struct.iwn_softc* %0) #0 {
  %2 = alloca %struct.iwn_softc*, align 8
  %3 = alloca %struct.iwn5000_phy_calib_temp_offset, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %2, align 8
  %4 = call i32 @memset(%struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 24)
  %5 = load i32, i32* @IWN5000_PHY_CALIB_TEMP_OFFSET, align 4
  %6 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offset, %struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offset, %struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offset, %struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @htole16(i64 %16)
  %18 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offset, %struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load i64, i64* @IWN_DEFAULT_TEMP_OFFSET, align 8
  %21 = call i8* @htole16(i64 %20)
  %22 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offset, %struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %25 = load i32, i32* @IWN_DEBUG_CALIBRATE, align 4
  %26 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offset, %struct.iwn5000_phy_calib_temp_offset* %3, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @le16toh(i8* %27)
  %29 = call i32 @DPRINTF(%struct.iwn_softc* %24, i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %31 = load i32, i32* @IWN_CMD_PHY_CALIB, align 4
  %32 = call i32 @iwn_cmd(%struct.iwn_softc* %30, i32 %31, %struct.iwn5000_phy_calib_temp_offset* %3, i32 24, i32 0)
  ret i32 %32
}

declare dso_local i32 @memset(%struct.iwn5000_phy_calib_temp_offset*, i32, i32) #1

declare dso_local i8* @htole16(i64) #1

declare dso_local i32 @DPRINTF(%struct.iwn_softc*, i32, i8*, i32) #1

declare dso_local i32 @le16toh(i8*) #1

declare dso_local i32 @iwn_cmd(%struct.iwn_softc*, i32, %struct.iwn5000_phy_calib_temp_offset*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
