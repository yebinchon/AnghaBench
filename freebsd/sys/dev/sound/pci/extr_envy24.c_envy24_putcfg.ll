; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_putcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_putcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"system configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"  SubVendorID: 0x%04x, SubDeviceID: 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  XIN2 Clock Source: \00", align 1
@PCIM_SCFG_XIN2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"22.5792MHz(44.1kHz*512)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"16.9344MHz(44.1kHz*384)\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"from external clock synthesizer chip\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"illegal system setting\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  MPU-401 UART(s) #: \00", align 1
@PCIM_SCFG_MPU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"  AC'97 codec: \00", align 1
@PCIM_SCFG_AC97 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"not exist\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"exist\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"  ADC #: \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"  DAC #: \00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"  Multi-track converter type: \00", align 1
@PCIM_ACL_MTC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"AC'97(SDATA_OUT:\00", align 1
@PCIM_ACL_OMODE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"|SDATA_IN:\00", align 1
@PCIM_ACL_IMODE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"I2S(\00", align 1
@PCIM_I2S_VOL = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"with volume, \00", align 1
@PCIM_I2S_96KHZ = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"96KHz support, \00", align 1
@PCIM_I2S_RES = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"16bit resolution, \00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"18bit resolution, \00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"20bit resolution, \00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"24bit resolution, \00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"ID#0x%x)\0A\00", align 1
@PCIM_I2S_ID = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"  S/PDIF(IN/OUT): \00", align 1
@PCIM_SPDIF_IN = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"1/\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"0/\00", align 1
@PCIM_SPDIF_OUT = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ID# 0x%02x\0A\00", align 1
@PCIM_SPDIF_ID = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [46 x i8] c"  GPIO(mask/dir/state): 0x%02x/0x%02x/0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @envy24_putcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_putcfg(%struct.sc_info* %0) #0 {
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
  %24 = load i32, i32* @PCIM_SCFG_XIN2, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %32 [
    i32 0, label %26
    i32 64, label %28
    i32 128, label %30
  ]

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %34

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %34

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
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
  %41 = load i32, i32* @PCIM_SCFG_MPU, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %48

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %50 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PCIM_SCFG_AC97, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %62

60:                                               ; preds = %48
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %64 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %69 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %74 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %75 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PCIM_ACL_MTC, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %62
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %84 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PCIM_ACL_OMODE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %96

94:                                               ; preds = %82
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %92
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %98 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %99 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PCIM_ACL_IMODE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %110

108:                                              ; preds = %96
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %160

112:                                              ; preds = %62
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %114 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %115 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PCIM_I2S_VOL, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %112
  %125 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %126 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PCIM_I2S_96KHZ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %124
  %136 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PCIM_I2S_RES, align 4
  %142 = and i32 %140, %141
  switch i32 %142, label %151 [
    i32 131, label %143
    i32 130, label %145
    i32 129, label %147
    i32 128, label %149
  ]

143:                                              ; preds = %135
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  br label %151

145:                                              ; preds = %135
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %151

147:                                              ; preds = %135
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  br label %151

149:                                              ; preds = %135
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  br label %151

151:                                              ; preds = %135, %149, %147, %145, %143
  %152 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PCIM_I2S_ID, align 4
  %158 = and i32 %156, %157
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %151, %110
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %162 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %163 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %162, i32 0, i32 2
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @PCIM_SPDIF_IN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  br label %174

172:                                              ; preds = %160
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %170
  %175 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %176 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PCIM_SPDIF_OUT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  br label %187

185:                                              ; preds = %174
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %183
  %188 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %189 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @PCIM_SPDIF_IN, align 4
  %194 = load i32, i32* @PCIM_SPDIF_OUT, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %187
  %199 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %200 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %199, i32 0, i32 2
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PCIM_SPDIF_ID, align 4
  %205 = and i32 %203, %204
  %206 = ashr i32 %205, 2
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %198, %187
  %209 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %210 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %209, i32 0, i32 2
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %215 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %214, i32 0, i32 2
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %220 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %219, i32 0, i32 2
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0), i32 %213, i32 %218, i32 %223)
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
