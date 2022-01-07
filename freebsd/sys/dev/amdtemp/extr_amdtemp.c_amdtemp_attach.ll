; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_product = type { i64 }
%struct.amdtemp_softc = type { i32, i32, %struct.TYPE_2__, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32)* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@AMDTEMP_CPUID = common dso_local global i32 0, align 4
@AMDTEMP_FLAG_CS_SWAP = common dso_local global i32 0, align 4
@AMDTEMP_FLAG_ALT_OFFSET = common dso_local global i32 0, align 4
@AMDTEMP_FLAG_CT_10BIT = common dso_local global i32 0, align 4
@amdtemp_gettemp0f = common dso_local global i32 0, align 4
@AMDTEMP_DRAM_CONF_HIGH = common dso_local global i32 0, align 4
@AMDTEMP_DRAM_MODE_DDR3 = common dso_local global i32 0, align 4
@CPUID_STEPPING = common dso_local global i32 0, align 4
@amdtemp_gettemp15hm60h = common dso_local global i32 0, align 4
@amdtemp_gettemp = common dso_local global i32 0, align 4
@amdtemp_gettemp17h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Bogus family 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"amdsmn\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"No SMN device found\0A\00", align 1
@amd_feature2 = common dso_local global i32 0, align 4
@AMDID2_CMP = common dso_local global i32 0, align 4
@cpu_procinfo2 = common dso_local global i32 0, align 4
@AMDID_CMP_CORES = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Erratum 319: temperature measurement may be inaccurate\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Found %d cores and %d sensors.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"dev.amdtemp.%d.sensor_offset\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"sensor_offset\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Temperature sensor offset\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"core0\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"Core 0\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"sensor0\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CORE0_SENSOR0 = common dso_local global i32 0, align 4
@amdtemp_sysctl = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Core 0 / Sensor 0 temperature\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"sensor1\00", align 1
@CORE0_SENSOR1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Core 0 / Sensor 1 temperature\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"core1\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Core 1\00", align 1
@CORE1_SENSOR0 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"Core 1 / Sensor 0 temperature\00", align 1
@CORE1_SENSOR1 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"Core 1 / Sensor 1 temperature\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"config_intrhook_establish failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdtemp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.amdtemp_product*, align 8
  %7 = alloca %struct.amdtemp_softc*, align 8
  %8 = alloca %struct.sysctl_ctx_list*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.amdtemp_softc* @device_get_softc(i32 %17)
  store %struct.amdtemp_softc* %18, %struct.amdtemp_softc** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = call i32 @amdtemp_match(i32 %20, %struct.amdtemp_product** %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %369

25:                                               ; preds = %1
  %26 = load i32, i32* @cpu_id, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @CPUID_TO_FAMILY(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @CPUID_TO_MODEL(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.amdtemp_product*, %struct.amdtemp_product** %6, align 8
  %32 = getelementptr inbounds %struct.amdtemp_product, %struct.amdtemp_product* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 15
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 64
  br i1 %43, label %44, label %53

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_parent(i32 %45)
  %47 = load i32, i32* @AMDTEMP_CPUID, align 4
  %48 = call i32 @pci_read_config(i32 %46, i32 %47, i32 4)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @CPUID_TO_FAMILY(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @CPUID_TO_MODEL(i32 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %44, %41, %38, %25
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %181 [
    i32 15, label %55
    i32 16, label %126
    i32 17, label %158
    i32 18, label %158
    i32 20, label %158
    i32 21, label %158
    i32 22, label %158
    i32 23, label %175
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* %12, align 4
  %57 = icmp sge i32 %56, 64
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @AMDTEMP_FLAG_CS_SWAP, align 4
  %60 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %61 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %12, align 4
  %66 = icmp sge i32 %65, 96
  br i1 %66, label %67, label %120

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 193
  br i1 %69, label %70, label %120

70:                                               ; preds = %67
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %72 = call i32 @do_cpuid(i32 -2147483647, i32* %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 9
  %76 = and i32 %75, 31
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  switch i32 %77, label %108 [
    i32 104, label %78
    i32 108, label %78
    i32 124, label %78
    i32 107, label %79
    i32 111, label %92
    i32 127, label %92
  ]

78:                                               ; preds = %70, %70, %70
  br label %114

79:                                               ; preds = %70
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 11
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 12
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @AMDTEMP_FLAG_ALT_OFFSET, align 4
  %87 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %88 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %82, %79
  br label %114

92:                                               ; preds = %70, %70
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 7
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 9
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 12
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @AMDTEMP_FLAG_ALT_OFFSET, align 4
  %103 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %104 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %98, %95, %92
  br label %114

108:                                              ; preds = %70
  %109 = load i32, i32* @AMDTEMP_FLAG_ALT_OFFSET, align 4
  %110 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %111 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %107, %91, %78
  %115 = load i32, i32* @AMDTEMP_FLAG_CT_10BIT, align 4
  %116 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %117 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %67, %64
  %121 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %122 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %121, i32 0, i32 0
  store i32 2, i32* %122, align 8
  %123 = load i32, i32* @amdtemp_gettemp0f, align 4
  %124 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %125 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  br label %186

126:                                              ; preds = %53
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %128 = call i32 @do_cpuid(i32 -2147483647, i32* %127)
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 28
  %132 = and i32 %131, 15
  switch i32 %132, label %157 [
    i32 0, label %133
    i32 1, label %134
  ]

133:                                              ; preds = %126
  store i32 1, i32* %14, align 4
  br label %157

134:                                              ; preds = %126
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @pci_get_bus(i32 %135)
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @pci_get_slot(i32 %137)
  %139 = load i32, i32* @AMDTEMP_DRAM_CONF_HIGH, align 4
  %140 = call i32 @pci_cfgregread(i32 %136, i32 %138, i32 2, i32 %139, i32 2)
  %141 = load i32, i32* @AMDTEMP_DRAM_MODE_DDR3, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %12, align 4
  %146 = icmp sgt i32 %145, 4
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @CPUID_STEPPING, align 4
  %153 = and i32 %151, %152
  %154 = icmp sge i32 %153, 3
  br i1 %154, label %155, label %156

155:                                              ; preds = %150, %144, %134
  br label %157

156:                                              ; preds = %150, %147
  store i32 1, i32* %14, align 4
  br label %157

157:                                              ; preds = %126, %156, %155, %133
  br label %158

158:                                              ; preds = %53, %53, %53, %53, %53, %157
  %159 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %160 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = icmp eq i32 %161, 21
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i32, i32* %12, align 4
  %165 = icmp sge i32 %164, 96
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32, i32* @amdtemp_gettemp15hm60h, align 4
  %168 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %169 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  store i32 1, i32* %16, align 4
  br label %174

170:                                              ; preds = %163, %158
  %171 = load i32, i32* @amdtemp_gettemp, align 4
  %172 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %173 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %166
  br label %186

175:                                              ; preds = %53
  %176 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %177 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* @amdtemp_gettemp17h, align 4
  %179 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %180 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  store i32 1, i32* %16, align 4
  br label %186

181:                                              ; preds = %53
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %2, align 4
  br label %369

186:                                              ; preds = %175, %174, %120
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @device_get_parent(i32 %190)
  %192 = call i32* @device_find_child(i32 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %193 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %194 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %193, i32 0, i32 4
  store i32* %192, i32** %194, align 8
  %195 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %196 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %189
  %200 = load i64, i64* @bootverbose, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = call i32 (i32, i8*, ...) @device_printf(i32 %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* @ENXIO, align 4
  store i32 %206, i32* %2, align 4
  br label %369

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %186
  %209 = load i32, i32* @amd_feature2, align 4
  %210 = load i32, i32* @AMDID2_CMP, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* @cpu_procinfo2, align 4
  %215 = load i32, i32* @AMDID_CMP_CORES, align 4
  %216 = and i32 %214, %215
  %217 = add nsw i32 %216, 1
  br label %219

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %213
  %220 = phi i32 [ %217, %213 ], [ 1, %218 ]
  %221 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %222 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %224 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @MAXCPU, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* @ENXIO, align 4
  store i32 %229, i32* %2, align 4
  br label %369

230:                                              ; preds = %219
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %3, align 4
  %235 = call i32 (i32, i8*, ...) @device_printf(i32 %234, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i64, i64* @bootverbose, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %260

239:                                              ; preds = %236
  %240 = load i32, i32* %3, align 4
  %241 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %242 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %245 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %256

248:                                              ; preds = %239
  %249 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %250 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %253 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 %251, %254
  br label %257

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %256, %248
  %258 = phi i32 [ %255, %248 ], [ 1, %256 ]
  %259 = call i32 (i32, i8*, ...) @device_printf(i32 %240, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %243, i32 %258)
  br label %260

260:                                              ; preds = %257, %236
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @device_get_unit(i32 %261)
  store i32 %262, i32* %15, align 4
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %264 = load i32, i32* %15, align 4
  %265 = call i32 @snprintf(i8* %263, i32 32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  %266 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %267 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %268 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %267, i32 0, i32 3
  %269 = call i32 @TUNABLE_INT_FETCH(i8* %266, i32* %268)
  %270 = load i32, i32* %3, align 4
  %271 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %270)
  store %struct.sysctl_ctx_list* %271, %struct.sysctl_ctx_list** %8, align 8
  %272 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %273 = load i32, i32* %3, align 4
  %274 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %273)
  %275 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %274)
  %276 = load i32, i32* @OID_AUTO, align 4
  %277 = load i32, i32* @CTLFLAG_RW, align 4
  %278 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %279 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %278, i32 0, i32 3
  %280 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %272, i32 %275, i32 %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %277, i32* %279, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %281 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %282 = load i32, i32* %3, align 4
  %283 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %282)
  %284 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %283)
  %285 = load i32, i32* @OID_AUTO, align 4
  %286 = load i32, i32* @CTLFLAG_RD, align 4
  %287 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %281, i32 %284, i32 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %286, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sysctl_oid* %287, %struct.sysctl_oid** %9, align 8
  %288 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %289 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %290 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %289)
  %291 = load i32, i32* @OID_AUTO, align 4
  %292 = load i32, i32* @CTLTYPE_INT, align 4
  %293 = load i32, i32* @CTLFLAG_RD, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* @CORE0_SENSOR0, align 4
  %297 = load i32, i32* @amdtemp_sysctl, align 4
  %298 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %288, i32 %290, i32 %291, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %294, i32 %295, i32 %296, i32 %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %299 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %300 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp sgt i32 %301, 1
  br i1 %302, label %303, label %350

303:                                              ; preds = %260
  %304 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %305 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %306 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %305)
  %307 = load i32, i32* @OID_AUTO, align 4
  %308 = load i32, i32* @CTLTYPE_INT, align 4
  %309 = load i32, i32* @CTLFLAG_RD, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* %3, align 4
  %312 = load i32, i32* @CORE0_SENSOR1, align 4
  %313 = load i32, i32* @amdtemp_sysctl, align 4
  %314 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %304, i32 %306, i32 %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %310, i32 %311, i32 %312, i32 %313, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %315 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %316 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp sgt i32 %317, 1
  br i1 %318, label %319, label %349

319:                                              ; preds = %303
  %320 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %321 = load i32, i32* %3, align 4
  %322 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %321)
  %323 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %322)
  %324 = load i32, i32* @OID_AUTO, align 4
  %325 = load i32, i32* @CTLFLAG_RD, align 4
  %326 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %320, i32 %323, i32 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %325, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  store %struct.sysctl_oid* %326, %struct.sysctl_oid** %9, align 8
  %327 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %328 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %329 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %328)
  %330 = load i32, i32* @OID_AUTO, align 4
  %331 = load i32, i32* @CTLTYPE_INT, align 4
  %332 = load i32, i32* @CTLFLAG_RD, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* %3, align 4
  %335 = load i32, i32* @CORE1_SENSOR0, align 4
  %336 = load i32, i32* @amdtemp_sysctl, align 4
  %337 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %327, i32 %329, i32 %330, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %333, i32 %334, i32 %335, i32 %336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %338 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %339 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %340 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %339)
  %341 = load i32, i32* @OID_AUTO, align 4
  %342 = load i32, i32* @CTLTYPE_INT, align 4
  %343 = load i32, i32* @CTLFLAG_RD, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* %3, align 4
  %346 = load i32, i32* @CORE1_SENSOR1, align 4
  %347 = load i32, i32* @amdtemp_sysctl, align 4
  %348 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %338, i32 %340, i32 %341, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %344, i32 %345, i32 %346, i32 %347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %349

349:                                              ; preds = %319, %303
  br label %350

350:                                              ; preds = %349, %260
  %351 = load i32, i32* %3, align 4
  %352 = call i32 @amdtemp_intrhook(i32 %351)
  %353 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %354 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 1
  store i32 (i32)* @amdtemp_intrhook, i32 (i32)** %355, align 8
  %356 = load i32, i32* %3, align 4
  %357 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %358 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  store i32 %356, i32* %359, align 8
  %360 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %7, align 8
  %361 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %360, i32 0, i32 2
  %362 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %350
  %365 = load i32, i32* %3, align 4
  %366 = call i32 (i32, i8*, ...) @device_printf(i32 %365, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %367 = load i32, i32* @ENXIO, align 4
  store i32 %367, i32* %2, align 4
  br label %369

368:                                              ; preds = %350
  store i32 0, i32* %2, align 4
  br label %369

369:                                              ; preds = %368, %364, %228, %205, %181, %23
  %370 = load i32, i32* %2, align 4
  ret i32 %370
}

declare dso_local %struct.amdtemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @amdtemp_match(i32, %struct.amdtemp_product**) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @amdtemp_intrhook(i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
