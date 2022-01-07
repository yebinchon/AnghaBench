; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_cable_length_m88.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_cable_length_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"e1000_get_cable_length_m88\00", align 1
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@M88E1000_CABLE_LENGTH_TABLE_SIZE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@e1000_m88_cable_length_table = common dso_local global i8** null, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_cable_length_m88(%struct.e1000_hw* %0) #0 {
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
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %13, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = bitcast %struct.e1000_hw* %15 to %struct.e1000_hw.0*
  %17 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %18 = call i64 %14(%struct.e1000_hw.0* %16, i32 %17, i32* %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %65

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @M88E1000_CABLE_LENGTH_TABLE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i64, i64* @E1000_ERR_PHY, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %2, align 8
  br label %65

36:                                               ; preds = %23
  %37 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = sdiv i32 %60, 2
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %36, %33, %21
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
