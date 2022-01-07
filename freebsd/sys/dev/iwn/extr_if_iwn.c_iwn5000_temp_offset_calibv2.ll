; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_temp_offset_calibv2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_temp_offset_calibv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i64, i64, i64 }
%struct.iwn5000_phy_calib_temp_offsetv2 = type { i32, i32, i8*, i8*, i8*, i32 }

@IWN5000_PHY_CALIB_TEMP_OFFSET = common dso_local global i32 0, align 4
@IWN_DEFAULT_TEMP_OFFSET = common dso_local global i64 0, align 8
@IWN_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"setting radio sensor low offset to %d, high offset to %d, voltage to %d\0A\00", align 1
@IWN_CMD_PHY_CALIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*)* @iwn5000_temp_offset_calibv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn5000_temp_offset_calibv2(%struct.iwn_softc* %0) #0 {
  %2 = alloca %struct.iwn_softc*, align 8
  %3 = alloca %struct.iwn5000_phy_calib_temp_offsetv2, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %2, align 8
  %4 = call i32 @memset(%struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 40)
  %5 = load i32, i32* @IWN5000_PHY_CALIB_TEMP_OFFSET, align 4
  %6 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 5
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @htole16(i64 %16)
  %18 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @htole16(i64 %21)
  %23 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load i64, i64* @IWN_DEFAULT_TEMP_OFFSET, align 8
  %26 = call i8* @htole16(i64 %25)
  %27 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* @IWN_DEFAULT_TEMP_OFFSET, align 8
  %29 = call i8* @htole16(i64 %28)
  %30 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %13
  %32 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @htole16(i64 %34)
  %36 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %38 = load i32, i32* @IWN_DEBUG_CALIBRATE, align 4
  %39 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @le16toh(i8* %40)
  %42 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @le16toh(i8* %43)
  %45 = getelementptr inbounds %struct.iwn5000_phy_calib_temp_offsetv2, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @le16toh(i8* %46)
  %48 = call i32 @DPRINTF(%struct.iwn_softc* %37, i32 %38, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  %49 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %50 = load i32, i32* @IWN_CMD_PHY_CALIB, align 4
  %51 = call i32 @iwn_cmd(%struct.iwn_softc* %49, i32 %50, %struct.iwn5000_phy_calib_temp_offsetv2* %3, i32 40, i32 0)
  ret i32 %51
}

declare dso_local i32 @memset(%struct.iwn5000_phy_calib_temp_offsetv2*, i32, i32) #1

declare dso_local i8* @htole16(i64) #1

declare dso_local i32 @DPRINTF(%struct.iwn_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @le16toh(i8*) #1

declare dso_local i32 @iwn_cmd(%struct.iwn_softc*, i32, %struct.iwn5000_phy_calib_temp_offsetv2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
