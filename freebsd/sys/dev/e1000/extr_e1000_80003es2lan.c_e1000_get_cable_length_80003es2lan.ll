; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_get_cable_length_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_get_cable_length_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [35 x i8] c"e1000_get_cable_length_80003es2lan\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@GG82563_PHY_DSP_DISTANCE = common dso_local global i32 0, align 4
@GG82563_DSPD_CABLE_LENGTH = common dso_local global i32 0, align 4
@GG82563_CABLE_LENGTH_TABLE_SIZE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@e1000_gg82563_cable_length_table = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_cable_length_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_cable_length_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %14, align 8
  %16 = icmp ne i64 (%struct.e1000_hw.0*, i32, i32*)* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %18, i64* %2, align 8
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = load i32, i32* @GG82563_PHY_DSP_DISTANCE, align 4
  %28 = call i64 %24(%struct.e1000_hw.0* %26, i32 %27, i32* %6)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %2, align 8
  br label %73

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GG82563_DSPD_CABLE_LENGTH, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GG82563_CABLE_LENGTH_TABLE_SIZE, align 4
  %39 = sub nsw i32 %38, 5
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* @E1000_ERR_PHY, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %2, align 8
  br label %73

44:                                               ; preds = %33
  %45 = load i8**, i8*** @e1000_gg82563_cable_length_table, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8**, i8*** @e1000_gg82563_cable_length_table, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 5
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = sdiv i32 %68, 2
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %44, %41, %31, %17
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
