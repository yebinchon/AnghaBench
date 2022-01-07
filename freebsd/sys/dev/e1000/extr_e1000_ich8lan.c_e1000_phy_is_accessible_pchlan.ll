; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_phy_is_accessible_pchlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_phy_is_accessible_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_4__ = type { i64 }

@PHY_ID1 = common dso_local global i32 0, align 4
@PHY_ID2 = common dso_local global i32 0, align 4
@PHY_REVISION_MASK = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_phy_is_accessible_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.1*
  %20 = load i32, i32* @PHY_ID1, align 4
  %21 = call i64 %17(%struct.e1000_hw.1* %19, i32 %20, i32* %4)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %12
  br label %52

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %29, 16
  store i32 %30, i32* %5, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.1*
  %38 = load i32, i32* @PHY_ID2, align 4
  %39 = call i64 %35(%struct.e1000_hw.1* %37, i32 %38, i32* %4)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 65535
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %28
  store i32 0, i32* %5, align 4
  br label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PHY_REVISION_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %45, %27
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %9

55:                                               ; preds = %46, %9
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %124

69:                                               ; preds = %61
  br label %86

70:                                               ; preds = %55
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PHY_REVISION_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  br label %124

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_pch_lpt, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %86
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %97, align 8
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = bitcast %struct.e1000_hw* %99 to %struct.e1000_hw.3*
  %101 = call i32 %98(%struct.e1000_hw.3* %100)
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %102)
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %93
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = call i64 @e1000_get_phy_id(%struct.e1000_hw* %107)
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %106, %93
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %113, align 8
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = bitcast %struct.e1000_hw* %115 to %struct.e1000_hw.2*
  %117 = call i32 %114(%struct.e1000_hw.2* %116)
  br label %118

118:                                              ; preds = %109, %86
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %2, align 4
  br label %176

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %73, %68
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @e1000_pch_lpt, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %174

131:                                              ; preds = %124
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = load i32, i32* @E1000_FWSM, align 4
  %134 = call i32 @E1000_READ_REG(%struct.e1000_hw* %132, i32 %133)
  %135 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %173, label %138

138:                                              ; preds = %131
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %142, align 8
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = bitcast %struct.e1000_hw* %144 to %struct.e1000_hw.1*
  %146 = load i32, i32* @CV_SMB_CTRL, align 4
  %147 = call i64 %143(%struct.e1000_hw.1* %145, i32 %146, i32* %4)
  %148 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %4, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %4, align 4
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %153 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %155, align 8
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %158 = bitcast %struct.e1000_hw* %157 to %struct.e1000_hw.0*
  %159 = load i32, i32* @CV_SMB_CTRL, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 %156(%struct.e1000_hw.0* %158, i32 %159, i32 %160)
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %163 = load i32, i32* @E1000_CTRL_EXT, align 4
  %164 = call i32 @E1000_READ_REG(%struct.e1000_hw* %162, i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %8, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %170 = load i32, i32* @E1000_CTRL_EXT, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %138, %131
  br label %174

174:                                              ; preds = %173, %124
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %121
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_get_phy_id(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
