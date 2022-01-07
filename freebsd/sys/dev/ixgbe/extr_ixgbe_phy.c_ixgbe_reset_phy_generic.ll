; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ixgbe_reset_phy_generic\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_none = common dso_local global i64 0, align 8
@IXGBE_ERR_OVERTEMP = common dso_local global i64 0, align 8
@IXGBE_MDIO_PHY_XS_CONTROL = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_XS_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_PHY_XS_RESET = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i64 0, align 8
@IXGBE_MDIO_TX_VENDOR_ALARMS_3 = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"PHY reset polling failed to complete.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_phy_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ixgbe_phy_unknown, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = call i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %16)
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @IXGBE_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_phy_none, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %18
  br label %138

30:                                               ; preds = %22
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.0*
  %45 = call i64 %42(%struct.ixgbe_hw.0* %44)
  %46 = icmp eq i64 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %138

48:                                               ; preds = %36, %30
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %138

53:                                               ; preds = %48
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.2*
  %61 = load i32, i32* @IXGBE_MDIO_PHY_XS_CONTROL, align 4
  %62 = load i32, i32* @IXGBE_MDIO_PHY_XS_DEV_TYPE, align 4
  %63 = load i32, i32* @IXGBE_MDIO_PHY_XS_RESET, align 4
  %64 = call i32 %58(%struct.ixgbe_hw.2* %60, i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %125, %53
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 30
  br i1 %67, label %68, label %128

68:                                               ; preds = %65
  %69 = call i32 @msec_delay(i32 100)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ixgbe_phy_x550em_ext_t, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %68
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.1*
  %84 = load i32, i32* @IXGBE_MDIO_TX_VENDOR_ALARMS_3, align 4
  %85 = load i32, i32* @IXGBE_MDIO_PMA_PMD_DEV_TYPE, align 4
  %86 = call i64 %81(%struct.ixgbe_hw.1* %83, i32 %84, i32 %85, i32* %5)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @IXGBE_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %2, align 8
  br label %140

92:                                               ; preds = %76
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @usec_delay(i32 2)
  br label %128

99:                                               ; preds = %92
  br label %124

100:                                              ; preds = %68
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %104, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = bitcast %struct.ixgbe_hw* %106 to %struct.ixgbe_hw.1*
  %108 = load i32, i32* @IXGBE_MDIO_PHY_XS_CONTROL, align 4
  %109 = load i32, i32* @IXGBE_MDIO_PHY_XS_DEV_TYPE, align 4
  %110 = call i64 %105(%struct.ixgbe_hw.1* %107, i32 %108, i32 %109, i32* %5)
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @IXGBE_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = load i64, i64* %6, align 8
  store i64 %115, i64* %2, align 8
  br label %140

116:                                              ; preds = %100
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @IXGBE_MDIO_PHY_XS_RESET, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = call i32 @usec_delay(i32 2)
  br label %128

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %99
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %65

128:                                              ; preds = %121, %97, %65
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @IXGBE_MDIO_PHY_XS_RESET, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %134, i64* %6, align 8
  %135 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %136 = call i32 @ERROR_REPORT1(i32 %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %52, %47, %29
  %139 = load i64, i64* %6, align 8
  store i64 %139, i64* %2, align 8
  br label %140

140:                                              ; preds = %138, %114, %90
  %141 = load i64, i64* %2, align 8
  ret i64 %141
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_identify_phy_generic(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
