; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_post_phy_reset_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_post_phy_reset_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*, i32, i32)*, i32 (%struct.e1000_hw.3*, i32, i32*)*, i64 (%struct.e1000_hw.4*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_hw.4 = type opaque
%struct.TYPE_4__ = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"e1000_post_phy_reset_ich8lan\00", align 1
@BM_PORT_GEN_CFG = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I82579_LPI_UPDATE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_post_phy_reset_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load i64 (%struct.e1000_hw.4*)*, i64 (%struct.e1000_hw.4*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.4*
  %15 = call i64 %12(%struct.e1000_hw.4* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %18, i64* %2, align 8
  br label %127

19:                                               ; preds = %1
  %20 = call i32 @msec_delay(i32 10)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %33
  ]

25:                                               ; preds = %19
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i64 @e1000_hv_phy_workarounds_ich8lan(%struct.e1000_hw* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %127

32:                                               ; preds = %25
  br label %42

33:                                               ; preds = %19
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = call i64 @e1000_lv_phy_workarounds_ich8lan(%struct.e1000_hw* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  store i64 %39, i64* %2, align 8
  br label %127

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41, %40, %32
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 128
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32 (%struct.e1000_hw.3*, i32, i32*)*, i32 (%struct.e1000_hw.3*, i32, i32*)** %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.3*
  %56 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %57 = call i32 %53(%struct.e1000_hw.3* %55, i32 %56, i32* %5)
  %58 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32 (%struct.e1000_hw.2*, i32, i32)*, i32 (%struct.e1000_hw.2*, i32, i32)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.2*
  %69 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 %66(%struct.e1000_hw.2* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %48, %42
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = call i64 @e1000_sw_lcd_config_ich8lan(%struct.e1000_hw* %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %127

79:                                               ; preds = %72
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i64 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %80, i32 %81)
  store i64 %82, i64* %4, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %125

88:                                               ; preds = %79
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = load i32, i32* @E1000_FWSM, align 4
  %91 = call i32 @E1000_READ_REG(%struct.e1000_hw* %89, i32 %90)
  %92 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = call i32 @msec_delay(i32 10)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %104, align 8
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = bitcast %struct.e1000_hw* %106 to %struct.e1000_hw.1*
  %108 = call i64 %105(%struct.e1000_hw.1* %107)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i64, i64* %4, align 8
  store i64 %112, i64* %2, align 8
  br label %127

113:                                              ; preds = %100
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = load i32, i32* @I82579_LPI_UPDATE_TIMER, align 4
  %116 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %114, i32 %115, i32 4999)
  store i64 %116, i64* %4, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %120, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = bitcast %struct.e1000_hw* %122 to %struct.e1000_hw.0*
  %124 = call i32 %121(%struct.e1000_hw.0* %123)
  br label %125

125:                                              ; preds = %113, %79
  %126 = load i64, i64* %4, align 8
  store i64 %126, i64* %2, align 8
  br label %127

127:                                              ; preds = %125, %111, %77, %38, %30, %17
  %128 = load i64, i64* %2, align 8
  ret i64 %128
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_hv_phy_workarounds_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_lv_phy_workarounds_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_sw_lcd_config_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
