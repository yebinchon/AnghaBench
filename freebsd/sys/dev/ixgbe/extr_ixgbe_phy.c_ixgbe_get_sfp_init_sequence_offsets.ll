; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_sfp_init_sequence_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_sfp_init_sequence_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"ixgbe_get_sfp_init_sequence_offsets\00", align 1
@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ixgbe_sfp_type_not_present = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core1 = common dso_local global i64 0, align 8
@IXGBE_PHY_INIT_OFFSET_NL = common dso_local global i64 0, align 8
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"eeprom read at offset %d failed\00", align 1
@IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT = common dso_local global i32 0, align 4
@IXGBE_PHY_INIT_END_NL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"SFP+ module not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No matching SFP+ module found\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %22, i32* %4, align 4
  br label %198

23:                                               ; preds = %3
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ixgbe_sfp_type_not_present, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @IXGBE_ERR_SFP_NOT_PRESENT, align 4
  store i32 %31, i32* %4, align 4
  br label %198

32:                                               ; preds = %23
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ixgbe_sfp_type_da_cu, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %46, i32* %4, align 4
  br label %198

47:                                               ; preds = %38, %32
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @ixgbe_sfp_type_da_act_lmt_core0, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55, %51, %47
  %64 = load i64, i64* @ixgbe_sfp_type_srlr_core0, align 8
  store i64 %64, i64* %9, align 8
  br label %84

65:                                               ; preds = %59
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @ixgbe_sfp_type_da_act_lmt_core1, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73, %69, %65
  %82 = load i64, i64* @ixgbe_sfp_type_srlr_core1, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %88, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = bitcast %struct.ixgbe_hw* %90 to %struct.ixgbe_hw.0*
  %92 = load i64, i64* @IXGBE_PHY_INIT_OFFSET_NL, align 8
  %93 = load i64*, i64** %6, align 8
  %94 = call i64 %89(%struct.ixgbe_hw.0* %91, i64 %92, i64* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %98 = load i64, i64* @IXGBE_PHY_INIT_OFFSET_NL, align 8
  %99 = call i32 @ERROR_REPORT2(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT, align 4
  store i32 %100, i32* %4, align 4
  br label %198

101:                                              ; preds = %84
  %102 = load i64*, i64** %6, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i64*, i64** %6, align 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 65535
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %101
  %110 = load i32, i32* @IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT, align 4
  store i32 %110, i32* %4, align 4
  br label %198

111:                                              ; preds = %105
  %112 = load i64*, i64** %6, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %118, align 8
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %121 = bitcast %struct.ixgbe_hw* %120 to %struct.ixgbe_hw.0*
  %122 = load i64*, i64** %6, align 8
  %123 = load i64, i64* %122, align 8
  %124 = call i64 %119(%struct.ixgbe_hw.0* %121, i64 %123, i64* %8)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %111
  br label %192

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %182, %127
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* @IXGBE_PHY_INIT_END_NL, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %183

132:                                              ; preds = %128
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %165

136:                                              ; preds = %132
  %137 = load i64*, i64** %6, align 8
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.0*
  %147 = load i64*, i64** %6, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %7, align 8
  %150 = call i64 %144(%struct.ixgbe_hw.0* %146, i64 %148, i64* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %136
  br label %192

153:                                              ; preds = %136
  %154 = load i64*, i64** %7, align 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64*, i64** %7, align 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 65535
  br i1 %160, label %161, label %164

161:                                              ; preds = %157, %153
  %162 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %163, i32* %4, align 4
  br label %198

164:                                              ; preds = %157
  br label %183

165:                                              ; preds = %132
  %166 = load i64*, i64** %6, align 8
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 2
  store i64 %168, i64* %166, align 8
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %170 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %172, align 8
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %175 = bitcast %struct.ixgbe_hw* %174 to %struct.ixgbe_hw.0*
  %176 = load i64*, i64** %6, align 8
  %177 = load i64, i64* %176, align 8
  %178 = call i64 %173(%struct.ixgbe_hw.0* %175, i64 %177, i64* %8)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %165
  br label %192

181:                                              ; preds = %165
  br label %182

182:                                              ; preds = %181
  br label %128

183:                                              ; preds = %164, %128
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @IXGBE_PHY_INIT_END_NL, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %189, i32* %4, align 4
  br label %198

190:                                              ; preds = %183
  %191 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %191, i32* %4, align 4
  br label %198

192:                                              ; preds = %180, %152, %126
  %193 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %194 = load i64*, i64** %6, align 8
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @ERROR_REPORT2(i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  %197 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %192, %190, %187, %161, %109, %96, %45, %30, %21
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
