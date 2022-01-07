; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_putcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_putcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"system configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"  SubVendorID: 0x%04x, SubDeviceID: 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  XIN2 Clock Source: \00", align 1
@ENVY24HT_CCSM_SCFG_XIN2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"24.576MHz(96kHz*256)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"49.152MHz(192kHz*256)\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reserved\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"illegal system setting\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  MPU-401 UART(s) #: \00", align 1
@ENVY24HT_CCSM_SCFG_MPU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"not implemented\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"  ADC #: \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c" and SPDIF receiver connected\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  no physical inputs\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"  DAC #: \00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"  Multi-track converter type: \00", align 1
@ENVY24HT_CCSM_ACL_MTC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"AC'97(SDATA_OUT:\00", align 1
@ENVY24HT_CCSM_ACL_OMODE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"I2S(\00", align 1
@ENVY24HT_CCSM_I2S_VOL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"with volume, \00", align 1
@ENVY24HT_CCSM_I2S_192KHZ = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"192KHz support, \00", align 1
@ENVY24HT_CCSM_I2S_96KHZ = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"48KHz support, \00", align 1
@ENVY24HT_CCSM_I2S_RES = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"16bit resolution, \00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"18bit resolution, \00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"20bit resolution, \00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"24bit resolution, \00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"ID#0x%x)\0A\00", align 1
@ENVY24HT_CCSM_I2S_ID = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"  S/PDIF(IN/OUT): \00", align 1
@ENVY24HT_CCSM_SPDIF_IN = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"1/\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"0/\00", align 1
@ENVY24HT_CCSM_SPDIF_OUT = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ID# 0x%02x\0A\00", align 1
@ENVY24HT_CCSM_SPDIF_ID = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [46 x i8] c"  GPIO(mask/dir/state): 0x%02x/0x%02x/0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @envy24ht_putcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_putcfg(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %4 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @device_printf(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %13 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ENVY24HT_CCSM_SCFG_XIN2, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %32 [
    i32 0, label %26
    i32 64, label %28
    i32 128, label %30
  ]

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %34

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %34

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %34

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30, %28, %26
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %36 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ENVY24HT_CCSM_SCFG_MPU, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %48

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %50 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %62 [
    i32 1, label %52
    i32 2, label %52
    i32 3, label %58
  ]

52:                                               ; preds = %48, %48
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %54 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %56)
  br label %64

58:                                               ; preds = %48
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %64

62:                                               ; preds = %48
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58, %52
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %66 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %71 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ENVY24HT_CCSM_ACL_MTC, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %64
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %81 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %82 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ENVY24HT_CCSM_ACL_OMODE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %93

91:                                               ; preds = %79
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %157

95:                                               ; preds = %64
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %97 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %98 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ENVY24HT_CCSM_I2S_VOL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %95
  %108 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ENVY24HT_CCSM_I2S_192KHZ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  br label %132

118:                                              ; preds = %107
  %119 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %120 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ENVY24HT_CCSM_I2S_96KHZ, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  br label %131

129:                                              ; preds = %118
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %127
  br label %132

132:                                              ; preds = %131, %116
  %133 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ENVY24HT_CCSM_I2S_RES, align 4
  %139 = and i32 %137, %138
  switch i32 %139, label %148 [
    i32 131, label %140
    i32 130, label %142
    i32 129, label %144
    i32 128, label %146
  ]

140:                                              ; preds = %132
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  br label %148

142:                                              ; preds = %132
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %148

144:                                              ; preds = %132
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  br label %148

146:                                              ; preds = %132
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  br label %148

148:                                              ; preds = %132, %146, %144, %142, %140
  %149 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %150 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ENVY24HT_CCSM_I2S_ID, align 4
  %155 = and i32 %153, %154
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %148, %93
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %159 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %160 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ENVY24HT_CCSM_SPDIF_IN, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %157
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  br label %171

169:                                              ; preds = %157
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %167
  %172 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %173 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ENVY24HT_CCSM_SPDIF_OUT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %171
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  br label %184

182:                                              ; preds = %171
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %180
  %185 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %186 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %185, i32 0, i32 2
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ENVY24HT_CCSM_SPDIF_IN, align 4
  %191 = load i32, i32* @ENVY24HT_CCSM_SPDIF_OUT, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %189, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %184
  %196 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %197 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %196, i32 0, i32 2
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ENVY24HT_CCSM_SPDIF_ID, align 4
  %202 = and i32 %200, %201
  %203 = ashr i32 %202, 2
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %195, %184
  %206 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %207 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %206, i32 0, i32 2
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %212 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %211, i32 0, i32 2
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %217 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %216, i32 0, i32 2
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0), i32 %210, i32 %215, i32 %220)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
