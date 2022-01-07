; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_reset_hw_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_reset_hw_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_5__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"e1000_reset_hw_ich8lan\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@E1000_PBA = common dso_local global i32 0, align 4
@E1000_PBA_8K = common dso_local global i32 0, align 4
@E1000_PBS = common dso_local global i32 0, align 4
@E1000_PBS_16K = common dso_local global i32 0, align 4
@e1000_pchlan = common dso_local global i64 0, align 8
@E1000_NVM_K1_CONFIG = common dso_local global i32 0, align 4
@E1000_NVM_K1_ENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@e1000_pch2lan = common dso_local global i64 0, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Issuing a global reset to ich8lan\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_FEXTNVM3 = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC = common dso_local global i32 0, align 4
@E1000_CRC_OFFSET = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_KABGTXD = common dso_local global i32 0, align 4
@E1000_KABGTXD_BGSQLBIAS = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %11, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = call i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = load i32, i32* @E1000_IMC, align 4
  %23 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %21, i32 %22, i32 -1)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @E1000_RCTL, align 4
  %26 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 0)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = load i32, i32* @E1000_TCTL, align 4
  %29 = load i32, i32* @E1000_TCTL_PSP, align 4
  %30 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %31)
  %33 = call i32 @msec_delay(i32 10)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @e1000_ich8lan, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %19
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @E1000_PBA, align 4
  %43 = load i32, i32* @E1000_PBA_8K, align 4
  %44 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %41, i32 %42, i32 %43)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = load i32, i32* @E1000_PBS, align 4
  %47 = load i32, i32* @E1000_PBS_16K, align 4
  %48 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %19
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @e1000_pchlan, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = load i32, i32* @E1000_NVM_K1_CONFIG, align 4
  %59 = call i64 @e1000_read_nvm(%struct.e1000_hw* %57, i32 %58, i32 1, i32* %5)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %2, align 8
  br label %200

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @E1000_NVM_K1_ENABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @TRUE, align 4
  %71 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @FALSE, align 4
  %75 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = load i32, i32* @E1000_CTRL, align 4
  %81 = call i32 @E1000_READ_REG(%struct.e1000_hw* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %85, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = bitcast %struct.e1000_hw* %87 to %struct.e1000_hw.1*
  %89 = call i32 %86(%struct.e1000_hw.1* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @e1000_pch2lan, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %91
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = load i32, i32* @E1000_FWSM, align 4
  %104 = call i32 @E1000_READ_REG(%struct.e1000_hw* %102, i32 %103)
  %105 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %101, %91
  br label %113

113:                                              ; preds = %112, %78
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %114)
  store i64 %115, i64* %8, align 8
  %116 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = load i32, i32* @E1000_CTRL, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @E1000_CTRL_RST, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %117, i32 %118, i32 %121)
  %123 = call i32 @msec_delay(i32 20)
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @e1000_pch2lan, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %113
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %132 = load i32, i32* @E1000_FEXTNVM3, align 4
  %133 = call i32 @E1000_READ_REG(%struct.e1000_hw* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = load i32, i32* @E1000_FEXTNVM3, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %130, %113
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %145
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %154, align 8
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = bitcast %struct.e1000_hw* %156 to %struct.e1000_hw.0*
  %158 = call i64 %155(%struct.e1000_hw.0* %157)
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %8, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = load i64, i64* %8, align 8
  store i64 %162, i64* %2, align 8
  br label %200

163:                                              ; preds = %150
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = call i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw* %164)
  store i64 %165, i64* %8, align 8
  %166 = load i64, i64* %8, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i64, i64* %8, align 8
  store i64 %169, i64* %2, align 8
  br label %200

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %145
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @e1000_pchlan, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %180 = load i32, i32* @E1000_CRC_OFFSET, align 4
  %181 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %179, i32 %180, i32 1701143909)
  br label %182

182:                                              ; preds = %178, %171
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %184 = load i32, i32* @E1000_IMC, align 4
  %185 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %183, i32 %184, i32 -1)
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %187 = load i32, i32* @E1000_ICR, align 4
  %188 = call i32 @E1000_READ_REG(%struct.e1000_hw* %186, i32 %187)
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %190 = load i32, i32* @E1000_KABGTXD, align 4
  %191 = call i32 @E1000_READ_REG(%struct.e1000_hw* %189, i32 %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* @E1000_KABGTXD_BGSQLBIAS, align 4
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  %195 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %196 = load i32, i32* @E1000_KABGTXD, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %195, i32 %196, i32 %197)
  %199 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %199, i64* %2, align 8
  br label %200

200:                                              ; preds = %182, %168, %161, %62
  %201 = load i64, i64* %2, align 8
  ret i64 %201
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
