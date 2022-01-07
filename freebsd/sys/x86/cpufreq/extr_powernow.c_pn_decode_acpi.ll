; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_decode_acpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_decode_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn_softc = type { i32, i32, i32, i32, %struct.powernow_state*, i32, i32, i32, i32, i32, i32, i64 }
%struct.powernow_state = type { i64, i32, i32, i32 }
%struct.cf_setting = type { i32, i32, i64* }

@POWERNOW_MAX_STATES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CPUFREQ_FLAG_INFO_ONLY = common dso_local global i32 0, align 4
@A0_ERRATA = common dso_local global i32 0, align 4
@PX_SPEC_CONTROL = common dso_local global i64 0, align 8
@pn7_fid_to_mult = common dso_local global i32* null, align 8
@MSR_AMDK7_FIDVID_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ACPI MAX frequency not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pn8_fid_to_mult = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pn_decode_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_decode_acpi(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca %struct.pn_softc*, align 8
  %14 = alloca %struct.powernow_state, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i32, i32* @POWERNOW_MAX_STATES, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca %struct.cf_setting, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = load i32, i32* @POWERNOW_MAX_STATES, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @CPUFREQ_DRV_SETTINGS(i32* %31, %struct.cf_setting* %24, i32* %17)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @CPUFREQ_DRV_TYPE(i32* %38, i32* %18)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @CPUFREQ_FLAG_INFO_ONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

49:                                               ; preds = %42
  %50 = load i32*, i32** %4, align 8
  %51 = call %struct.pn_softc* @device_get_softc(i32* %50)
  store %struct.pn_softc* %51, %struct.pn_softc** %13, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %53 = call i32 @do_cpuid(i32 -2147483647, i32* %52)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 4095
  %58 = icmp eq i32 %57, 1888
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i32, i32* @A0_ERRATA, align 4
  %61 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %62 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %49
  store i64 0, i64* %10, align 8
  %66 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %67 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %174, %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %177

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %24, i64 %74
  %76 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @PX_SPEC_CONTROL, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  %81 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %82 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %114 [
    i32 129, label %84
    i32 128, label %107
  ]

84:                                               ; preds = %72
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @ACPI_PN7_CTRL_TO_FID(i64 %85)
  %87 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @ACPI_PN7_CTRL_TO_VID(i64 %88)
  %90 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 3
  store i32 %89, i32* %90, align 8
  %91 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %92 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @A0_ERRATA, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %84
  %98 = load i32*, i32** @pn7_fid_to_mult, align 8
  %99 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, 10
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %174

106:                                              ; preds = %97, %84
  br label %114

107:                                              ; preds = %72
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @ACPI_PN8_CTRL_TO_FID(i64 %108)
  %110 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @ACPI_PN8_CTRL_TO_VID(i64 %111)
  %113 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  br label %114

114:                                              ; preds = %72, %107, %106
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %24, i64 %116
  %118 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 16
  %120 = mul nsw i32 %119, 1000
  %121 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 1
  store i32 %120, i32* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %24, i64 %123
  %125 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %147, %114
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %134 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %133, i32 0, i32 4
  %135 = load %struct.powernow_state*, %struct.powernow_state** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %135, i64 %138
  %140 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %141, %143
  br label %145

145:                                              ; preds = %132, %129
  %146 = phi i1 [ false, %129 ], [ %144, %132 ]
  br i1 %146, label %147, label %164

147:                                              ; preds = %145
  %148 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %149 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %148, i32 0, i32 4
  %150 = load %struct.powernow_state*, %struct.powernow_state** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %150, i64 %152
  %154 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %155 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %154, i32 0, i32 4
  %156 = load %struct.powernow_state*, %struct.powernow_state** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %156, i64 %159
  %161 = call i32 @memcpy(%struct.powernow_state* %153, %struct.powernow_state* %160, i32 24)
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %7, align 4
  br label %129

164:                                              ; preds = %145
  %165 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %166 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %165, i32 0, i32 4
  %167 = load %struct.powernow_state*, %struct.powernow_state** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %167, i64 %169
  %171 = call i32 @memcpy(%struct.powernow_state* %170, %struct.powernow_state* %14, i32 24)
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %164, %105
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %68

177:                                              ; preds = %68
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %180 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %182 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %181, i32 0, i32 4
  %183 = load %struct.powernow_state*, %struct.powernow_state** %182, align 8
  %184 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %183, i64 0
  %185 = bitcast %struct.powernow_state* %14 to i8*
  %186 = bitcast %struct.powernow_state* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 24, i1 false)
  %187 = load i32, i32* @MSR_AMDK7_FIDVID_STATUS, align 4
  %188 = call i32 @rdmsr(i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %190 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %272 [
    i32 129, label %192
    i32 128, label %218
  ]

192:                                              ; preds = %177
  %193 = load i64, i64* %10, align 8
  %194 = call i64 @ACPI_PN7_CTRL_TO_SGTC(i64 %193)
  %195 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %196 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %195, i32 0, i32 11
  store i64 %194, i64* %196, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i64 @PN7_STA_MFID(i32 %197)
  %199 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %198, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %192
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @device_printf(i32* %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %205 = load i32, i32* @EINVAL, align 4
  store i32 %205, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

206:                                              ; preds = %192
  %207 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sdiv i32 %208, 100
  %210 = load i32*, i32** @pn7_fid_to_mult, align 8
  %211 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sdiv i32 %209, %214
  %216 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %217 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  br label %272

218:                                              ; preds = %177
  %219 = load i64, i64* %10, align 8
  %220 = call i32 @ACPI_PN8_CTRL_TO_VST(i64 %219)
  %221 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %222 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %221, i32 0, i32 10
  store i32 %220, i32* %222, align 4
  %223 = load i64, i64* %10, align 8
  %224 = call i32 @ACPI_PN8_CTRL_TO_MVS(i64 %223)
  %225 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %226 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %225, i32 0, i32 9
  store i32 %224, i32* %226, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i32 @ACPI_PN8_CTRL_TO_PLL(i64 %227)
  %229 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %230 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %229, i32 0, i32 8
  store i32 %228, i32* %230, align 4
  %231 = load i64, i64* %10, align 8
  %232 = call i32 @ACPI_PN8_CTRL_TO_RVO(i64 %231)
  %233 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %234 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 8
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @ACPI_PN8_CTRL_TO_IRT(i64 %235)
  %237 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %238 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %240 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %239, i32 0, i32 5
  store i32 0, i32* %240, align 8
  %241 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %242 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp sge i32 %243, 2
  br i1 %244, label %245, label %260

245:                                              ; preds = %218
  %246 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %247 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %246, i32 0, i32 4
  %248 = load %struct.powernow_state*, %struct.powernow_state** %247, align 8
  %249 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %250 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %248, i64 %253
  %255 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ult i64 %256, 8
  br i1 %257, label %258, label %260

258:                                              ; preds = %245
  %259 = load i32, i32* @EINVAL, align 4
  store i32 %259, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

260:                                              ; preds = %245, %218
  %261 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = sdiv i32 %262, 100
  %264 = load i32*, i32** @pn8_fid_to_mult, align 8
  %265 = getelementptr inbounds %struct.powernow_state, %struct.powernow_state* %14, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sdiv i32 %263, %268
  %270 = load %struct.pn_softc*, %struct.pn_softc** %13, align 8
  %271 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %177, %260, %206
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %273

273:                                              ; preds = %272, %258, %202, %47, %35, %28
  %274 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CPUFREQ_DRV_SETTINGS(i32*, %struct.cf_setting*, i32*) #2

declare dso_local i32 @CPUFREQ_DRV_TYPE(i32*, i32*) #2

declare dso_local %struct.pn_softc* @device_get_softc(i32*) #2

declare dso_local i32 @do_cpuid(i32, i32*) #2

declare dso_local i64 @ACPI_PN7_CTRL_TO_FID(i64) #2

declare dso_local i32 @ACPI_PN7_CTRL_TO_VID(i64) #2

declare dso_local i64 @ACPI_PN8_CTRL_TO_FID(i64) #2

declare dso_local i32 @ACPI_PN8_CTRL_TO_VID(i64) #2

declare dso_local i32 @memcpy(%struct.powernow_state*, %struct.powernow_state*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @rdmsr(i32) #2

declare dso_local i64 @ACPI_PN7_CTRL_TO_SGTC(i64) #2

declare dso_local i64 @PN7_STA_MFID(i32) #2

declare dso_local i32 @device_printf(i32*, i8*) #2

declare dso_local i32 @ACPI_PN8_CTRL_TO_VST(i64) #2

declare dso_local i32 @ACPI_PN8_CTRL_TO_MVS(i64) #2

declare dso_local i32 @ACPI_PN8_CTRL_TO_PLL(i64) #2

declare dso_local i32 @ACPI_PN8_CTRL_TO_RVO(i64) #2

declare dso_local i32 @ACPI_PN8_CTRL_TO_IRT(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
