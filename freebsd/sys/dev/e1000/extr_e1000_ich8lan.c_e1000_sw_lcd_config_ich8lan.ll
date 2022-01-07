; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_sw_lcd_config_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_sw_lcd_config_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.e1000_phy_info = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i64)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.3*, i64, i32, i64*)* }
%struct.e1000_hw.3 = type opaque
%struct.TYPE_5__ = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"e1000_sw_lcd_config_ich8lan\00", align 1
@e1000_phy_igp_3 = common dso_local global i32 0, align 4
@E1000_DEV_ID_ICH8_IGP_AMT = common dso_local global i32 0, align 4
@E1000_DEV_ID_ICH8_IGP_C = common dso_local global i32 0, align 4
@E1000_FEXTNVM_SW_CONFIG = common dso_local global i32 0, align 4
@E1000_FEXTNVM_SW_CONFIG_ICH8M = common dso_local global i32 0, align 4
@E1000_FEXTNVM = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_LCD_WRITE_ENABLE = common dso_local global i32 0, align 4
@E1000_EXTCNF_SIZE = common dso_local global i32 0, align 4
@E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_MASK = common dso_local global i32 0, align 4
@E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_EXT_CNF_POINTER_MASK = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_EXT_CNF_POINTER_SHIFT = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE = common dso_local global i32 0, align 4
@E1000_LEDCTL = common dso_local global i32 0, align 4
@HV_LED_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@PHY_REG_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_sw_lcd_config_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_sw_lcd_config_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_phy_info* %16, %struct.e1000_phy_info** %4, align 8
  %17 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %14, align 8
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %48 [
    i32 133, label %23
    i32 128, label %46
    i32 132, label %46
    i32 130, label %46
    i32 129, label %46
    i32 131, label %46
  ]

23:                                               ; preds = %1
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @e1000_phy_igp_3, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %2, align 8
  br label %226

31:                                               ; preds = %23
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @E1000_DEV_ID_ICH8_IGP_AMT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @E1000_DEV_ID_ICH8_IGP_C, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @E1000_FEXTNVM_SW_CONFIG, align 4
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %1, %1, %1, %1, %1, %45
  %47 = load i32, i32* @E1000_FEXTNVM_SW_CONFIG_ICH8M, align 4
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %1
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %2, align 8
  br label %226

50:                                               ; preds = %46, %43
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.2*
  %58 = call i64 %55(%struct.e1000_hw.2* %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %2, align 8
  br label %226

63:                                               ; preds = %50
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = load i32, i32* @E1000_FEXTNVM, align 4
  %66 = call i32 @E1000_READ_REG(%struct.e1000_hw* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %216

72:                                               ; preds = %63
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %75 = call i32 @E1000_READ_REG(%struct.e1000_hw* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 132
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @E1000_EXTCNF_CTRL_LCD_WRITE_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %216

87:                                               ; preds = %81, %72
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = load i32, i32* @E1000_EXTCNF_SIZE, align 4
  %90 = call i32 @E1000_READ_REG(%struct.e1000_hw* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_MASK, align 4
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_SHIFT, align 4
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  br label %216

100:                                              ; preds = %87
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @E1000_EXTCNF_CTRL_EXT_CNF_POINTER_MASK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @E1000_EXTCNF_CTRL_EXT_CNF_POINTER_SHIFT, align 4
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 128
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112, %100
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 128
  br i1 %122, label %123, label %142

123:                                              ; preds = %117, %112
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = call i64 @e1000_write_smbus_addr(%struct.e1000_hw* %124)
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %216

129:                                              ; preds = %123
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = load i32, i32* @E1000_LEDCTL, align 4
  %132 = call i32 @E1000_READ_REG(%struct.e1000_hw* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = load i32, i32* @HV_LED_CONFIG, align 4
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %133, i32 %134, i64 %136)
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %216

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i32, i32* %8, align 4
  %144 = shl i32 %143, 1
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %11, align 8
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %212, %142
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %215

150:                                              ; preds = %146
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64 (%struct.e1000_hw.3*, i64, i32, i64*)*, i64 (%struct.e1000_hw.3*, i64, i32, i64*)** %154, align 8
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = bitcast %struct.e1000_hw* %156 to %struct.e1000_hw.3*
  %158 = load i64, i64* %11, align 8
  %159 = load i32, i32* %5, align 4
  %160 = mul nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %158, %161
  %163 = call i64 %155(%struct.e1000_hw.3* %157, i64 %162, i32 1, i64* %12)
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %150
  br label %216

167:                                              ; preds = %150
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %169 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64 (%struct.e1000_hw.3*, i64, i32, i64*)*, i64 (%struct.e1000_hw.3*, i64, i32, i64*)** %171, align 8
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %174 = bitcast %struct.e1000_hw* %173 to %struct.e1000_hw.3*
  %175 = load i64, i64* %11, align 8
  %176 = load i32, i32* %5, align 4
  %177 = mul nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %175, %178
  %180 = add nsw i64 %179, 1
  %181 = call i64 %172(%struct.e1000_hw.3* %174, i64 %180, i32 1, i64* %13)
  store i64 %181, i64* %10, align 8
  %182 = load i64, i64* %10, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %167
  br label %216

185:                                              ; preds = %167
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* @IGP01E1000_PHY_PAGE_SELECT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i64, i64* %12, align 8
  store i64 %190, i64* %14, align 8
  br label %212

191:                                              ; preds = %185
  %192 = load i64, i64* @PHY_REG_MASK, align 8
  %193 = load i64, i64* %13, align 8
  %194 = and i64 %193, %192
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %13, align 8
  %197 = or i64 %196, %195
  store i64 %197, i64* %13, align 8
  %198 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %199 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i64 (%struct.e1000_hw.1*, i32, i64)*, i64 (%struct.e1000_hw.1*, i32, i64)** %200, align 8
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %203 = bitcast %struct.e1000_hw* %202 to %struct.e1000_hw.1*
  %204 = load i64, i64* %13, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i64, i64* %12, align 8
  %207 = call i64 %201(%struct.e1000_hw.1* %203, i32 %205, i64 %206)
  store i64 %207, i64* %10, align 8
  %208 = load i64, i64* %10, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %191
  br label %216

211:                                              ; preds = %191
  br label %212

212:                                              ; preds = %211, %189
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %146

215:                                              ; preds = %146
  br label %216

216:                                              ; preds = %215, %210, %184, %166, %140, %128, %99, %86, %71
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %218 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %220, align 8
  %222 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %223 = bitcast %struct.e1000_hw* %222 to %struct.e1000_hw.0*
  %224 = call i32 %221(%struct.e1000_hw.0* %223)
  %225 = load i64, i64* %10, align 8
  store i64 %225, i64* %2, align 8
  br label %226

226:                                              ; preds = %216, %61, %48, %29
  %227 = load i64, i64* %2, align 8
  ret i64 %227
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_write_smbus_addr(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
