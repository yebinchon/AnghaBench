; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_m88_gen2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_m88_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.2*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"e1000_copper_link_setup_m88_gen2\00", align 1
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1112_E_PHY_ID = common dso_local global i64 0, align 8
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1543_E_PHY_ID = common dso_local global i64 0, align 8
@I347AT4_PSCR_DOWNSHIFT_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1
@I347AT4_PSCR_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@I347AT4_PSCR_DOWNSHIFT_6X = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_copper_link_setup_m88_gen2(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = bitcast %struct.e1000_hw* %14 to %struct.e1000_hw.2*
  %16 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %17 = call i64 %13(%struct.e1000_hw.2* %15, i32 %16, i32* %6)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %151

22:                                               ; preds = %1
  %23 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %50 [
    i32 1, label %30
    i32 2, label %34
    i32 3, label %38
    i32 0, label %49
  ]

30:                                               ; preds = %22
  %31 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %54

34:                                               ; preds = %22
  %35 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %54

38:                                               ; preds = %22
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @M88E1112_E_PHY_ID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %54

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %22, %48
  br label %50

50:                                               ; preds = %22, %49
  %51 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %44, %34, %30
  %55 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @M88E1543_E_PHY_ID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %67
  %74 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_ENABLE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %80, align 8
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = bitcast %struct.e1000_hw* %82 to %struct.e1000_hw.1*
  %84 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i64 %81(%struct.e1000_hw.1* %83, i32 %84, i32 %85)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* %2, align 8
  br label %151

91:                                               ; preds = %73
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %94, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = bitcast %struct.e1000_hw* %96 to %struct.e1000_hw.0*
  %98 = call i64 %95(%struct.e1000_hw.0* %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i64, i64* %5, align 8
  store i64 %103, i64* %2, align 8
  br label %151

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %67
  %106 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_6X, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_ENABLE, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %118, align 8
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = bitcast %struct.e1000_hw* %120 to %struct.e1000_hw.1*
  %122 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i64 %119(%struct.e1000_hw.1* %121, i32 %122, i32 %123)
  store i64 %124, i64* %5, align 8
  %125 = load i64, i64* %5, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %105
  %128 = load i64, i64* %5, align 8
  store i64 %128, i64* %2, align 8
  br label %151

129:                                              ; preds = %105
  %130 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %132, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = bitcast %struct.e1000_hw* %134 to %struct.e1000_hw.0*
  %136 = call i64 %133(%struct.e1000_hw.0* %135)
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i64, i64* %5, align 8
  store i64 %141, i64* %2, align 8
  br label %151

142:                                              ; preds = %129
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = call i64 @e1000_set_master_slave_mode(%struct.e1000_hw* %143)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i64, i64* %5, align 8
  store i64 %148, i64* %2, align 8
  br label %151

149:                                              ; preds = %142
  %150 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %150, i64* %2, align 8
  br label %151

151:                                              ; preds = %149, %147, %139, %127, %101, %89, %20
  %152 = load i64, i64* %2, align 8
  ret i64 %152
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_set_master_slave_mode(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
