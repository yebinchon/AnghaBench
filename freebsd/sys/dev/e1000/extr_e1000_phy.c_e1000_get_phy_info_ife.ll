; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_ife.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_ife.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i8*, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [23 x i8] c"e1000_get_phy_info_ife\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@IFE_PHY_SPECIAL_CONTROL = common dso_local global i32 0, align 4
@IFE_PSC_AUTO_POLARITY_DISABLE = common dso_local global i32 0, align 4
@IFE_PSC_FORCE_POLARITY = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4
@IFE_PHY_MDIX_CONTROL = common dso_local global i32 0, align 4
@IFE_PMC_MDIX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_phy_info_ife(%struct.e1000_hw* %0) #0 {
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
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %11, i32 1, i32 0, i32* %7)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %104

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %2, align 8
  br label %104

24:                                               ; preds = %17
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %27, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = bitcast %struct.e1000_hw* %29 to %struct.e1000_hw.0*
  %31 = load i32, i32* @IFE_PHY_SPECIAL_CONTROL, align 4
  %32 = call i64 %28(%struct.e1000_hw.0* %30, i32 %31, i32* %6)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %104

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IFE_PSC_AUTO_POLARITY_DISABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i64 @e1000_check_polarity_ife(%struct.e1000_hw* %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %104

57:                                               ; preds = %50
  br label %71

58:                                               ; preds = %37
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IFE_PSC_FORCE_POLARITY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %57
  %72 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %74, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = bitcast %struct.e1000_hw* %76 to %struct.e1000_hw.0*
  %78 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %79 = call i64 %75(%struct.e1000_hw.0* %77, i32 %78, i32* %6)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %2, align 8
  br label %104

84:                                               ; preds = %71
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @IFE_PMC_MDIX_STATUS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %95 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %96 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %84, %82, %55, %35, %20, %15
  %105 = load i64, i64* %2, align 8
  ret i64 %105
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_check_polarity_ife(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
