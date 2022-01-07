; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_82577.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_82577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_copper_link_setup_82577\00", align 1
@e1000_phy_82580 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@I82577_CFG_REG = common dso_local global i32 0, align 4
@I82577_CFG_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@I82577_CFG_ENABLE_DOWNSHIFT = common dso_local global i32 0, align 4
@I82577_PHY_CTRL_2 = common dso_local global i32 0, align 4
@I82577_PHY_CTRL2_MDIX_CFG_MASK = common dso_local global i32 0, align 4
@I82577_PHY_CTRL2_MANUAL_MDIX = common dso_local global i32 0, align 4
@I82577_PHY_CTRL2_AUTO_MDI_MDIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_copper_link_setup_82577(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_phy_82580, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.2*
  %21 = call i64 %18(%struct.e1000_hw.2* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %114

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.1*
  %36 = load i32, i32* @I82577_CFG_REG, align 4
  %37 = call i64 %33(%struct.e1000_hw.1* %35, i32 %36, i32* %5)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %114

42:                                               ; preds = %28
  %43 = load i32, i32* @I82577_CFG_ASSERT_CRS_ON_TX, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @I82577_CFG_ENABLE_DOWNSHIFT, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.0*
  %56 = load i32, i32* @I82577_CFG_REG, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 %53(%struct.e1000_hw.0* %55, i32 %56, i32 %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %2, align 8
  br label %114

63:                                               ; preds = %42
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = load i32, i32* @I82577_PHY_CTRL_2, align 4
  %72 = call i64 %68(%struct.e1000_hw.1* %70, i32 %71, i32* %5)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %114

77:                                               ; preds = %63
  %78 = load i32, i32* @I82577_PHY_CTRL2_MDIX_CFG_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %92 [
    i32 1, label %86
    i32 2, label %87
    i32 0, label %91
  ]

86:                                               ; preds = %77
  br label %96

87:                                               ; preds = %77
  %88 = load i32, i32* @I82577_PHY_CTRL2_MANUAL_MDIX, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %96

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %77, %91
  %93 = load i32, i32* @I82577_PHY_CTRL2_AUTO_MDI_MDIX, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %87, %86
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %100, align 8
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = bitcast %struct.e1000_hw* %102 to %struct.e1000_hw.0*
  %104 = load i32, i32* @I82577_PHY_CTRL_2, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i64 %101(%struct.e1000_hw.0* %103, i32 %104, i32 %105)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i64, i64* %4, align 8
  store i64 %110, i64* %2, align 8
  br label %114

111:                                              ; preds = %96
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = call i64 @e1000_set_master_slave_mode(%struct.e1000_hw* %112)
  store i64 %113, i64* %2, align 8
  br label %114

114:                                              ; preds = %111, %109, %75, %61, %40, %24
  %115 = load i64, i64* %2, align 8
  ret i64 %115
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
