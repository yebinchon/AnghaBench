; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.hdaa_widget = type { i64, i8*, i32, i64, i64, i64, i32, i32*, i64*, i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Default parameters:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" Input\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Ghost widget nid=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"            nid: %d%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" [DISABLED]\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"           Name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"     Widget cap: 0x%08x\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" LRSWAP\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" PWR\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" DIGITAL\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" UNSOL\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" PROC\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" STRIPE(x%d)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" STEREO\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" %dCH\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"    Association: %d (0x%04x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"            OSS: %s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@ossnames = common dso_local global i8** null, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_OUTPUT = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDA_INVALID = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"           EAPD: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"    Connections: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"          + %s<- nid=%d [%s]\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"[DISABLED] \00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"GHOST!\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" [UNKNOWN]\00", align 1
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [12 x i8] c" (selected)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_dump_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_nodes(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_widget*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %9 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @device_printf(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %17 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %20 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %23 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hdaa_dump_audio_formats(i32 %18, i32 %21, i32 %24)
  %26 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %27 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %30 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @hdaa_dump_amp(i32 %28, i64 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %34 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %37 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @hdaa_dump_amp(i32 %35, i64 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %41 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %429, %1
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %46 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %432

49:                                               ; preds = %43
  %50 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %50, i32 %51)
  store %struct.hdaa_widget* %52, %struct.hdaa_widget** %3, align 8
  %53 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %54 = icmp eq %struct.hdaa_widget* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %57 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %429

61:                                               ; preds = %49
  %62 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %63 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %67 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %70 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %73 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %71, i8* %77)
  %79 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %80 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %83 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  %86 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %87 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %90 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %89, i32 0, i32 10
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %95 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 3809
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %181

100:                                              ; preds = %61
  %101 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %102 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_LR_SWAP(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %100
  %110 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %111 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %110, i32 0, i32 10
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_POWER_CTRL(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %109
  %119 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %120 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %118
  %128 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %129 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_UNSOL_CAP(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %127
  %137 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %138 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %137, i32 0, i32 10
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_PROC_WIDGET(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %136
  %146 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %147 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_STRIPE(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %145
  %153 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %154 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %153, i32 0, i32 13
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @fls(i32 %157)
  %159 = sub nsw i32 %158, 1
  %160 = shl i32 1, %159
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %152, %145
  %163 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %164 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %163, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @HDA_PARAM_AUDIO_WIDGET_CAP_CC(i32 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %180

172:                                              ; preds = %162
  %173 = load i32, i32* %7, align 4
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %175, %172
  br label %180

180:                                              ; preds = %179, %170
  br label %181

181:                                              ; preds = %180, %61
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %183 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %184 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %198

187:                                              ; preds = %181
  %188 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %189 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %192 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %195 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %187, %181
  %199 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %200 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %205 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = icmp uge i64 %206, 0
  br i1 %207, label %208, label %232

208:                                              ; preds = %203, %198
  %209 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %210 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %213 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %216 = call i32 @hdaa_audio_ctl_ossmixer_mask2allname(i64 %214, i8* %215, i32 64)
  %217 = call i32 (i32, i8*, ...) @device_printf(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %216)
  %218 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %219 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp uge i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %208
  %223 = load i8**, i8*** @ossnames, align 8
  %224 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %225 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i8*, i8** %223, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %222, %208
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %203
  %233 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %234 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_OUTPUT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %240 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %238, %232
  %245 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %246 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %249 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %248, i32 0, i32 10
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %253 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %252, i32 0, i32 10
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @hdaa_dump_audio_formats(i32 %247, i32 %251, i32 %255)
  br label %272

257:                                              ; preds = %238
  %258 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %259 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %268, label %263

263:                                              ; preds = %257
  %264 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %265 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %264, i32 0, i32 11
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263, %257
  %269 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %270 = call i32 @hdaa_dump_pin(%struct.hdaa_widget* %269)
  br label %271

271:                                              ; preds = %268, %263
  br label %272

272:                                              ; preds = %271, %244
  %273 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %274 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %273, i32 0, i32 10
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @HDA_INVALID, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %272
  %280 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %281 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %284 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %283, i32 0, i32 10
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i32, i8*, ...) @device_printf(i32 %282, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %279, %272
  %289 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %290 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %289, i32 0, i32 10
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_OUT_AMP(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %310

295:                                              ; preds = %288
  %296 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %297 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %296, i32 0, i32 10
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %295
  %302 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %303 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %306 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %305, i32 0, i32 10
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @hdaa_dump_amp(i32 %304, i64 %308, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %310

310:                                              ; preds = %301, %295, %288
  %311 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %312 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_IN_AMP(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %310
  %318 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %319 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %318, i32 0, i32 10
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %317
  %324 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %325 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %328 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %327, i32 0, i32 10
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @hdaa_dump_amp(i32 %326, i64 %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %332

332:                                              ; preds = %323, %317, %310
  %333 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %334 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %332
  %338 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %339 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %342 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = call i32 (i32, i8*, ...) @device_printf(i32 %340, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %343)
  br label %345

345:                                              ; preds = %337, %332
  store i32 0, i32* %7, align 4
  br label %346

346:                                              ; preds = %425, %345
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %349 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 8
  %351 = icmp slt i32 %347, %350
  br i1 %351, label %352, label %428

352:                                              ; preds = %346
  %353 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %354 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %355 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %354, i32 0, i32 7
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %7, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %353, i32 %360)
  store %struct.hdaa_widget* %361, %struct.hdaa_widget** %4, align 8
  %362 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %363 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %366 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %365, i32 0, i32 8
  %367 = load i64*, i64** %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %375 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %376 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %375, i32 0, i32 7
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %7, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %383 = icmp eq %struct.hdaa_widget* %382, null
  br i1 %383, label %384, label %385

384:                                              ; preds = %352
  br label %389

385:                                              ; preds = %352
  %386 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %387 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %386, i32 0, i32 1
  %388 = load i8*, i8** %387, align 8
  br label %389

389:                                              ; preds = %385, %384
  %390 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), %384 ], [ %388, %385 ]
  %391 = call i32 (i32, i8*, ...) @device_printf(i32 %364, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8* %374, i32 %381, i8* %390)
  %392 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %393 = icmp eq %struct.hdaa_widget* %392, null
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %404

396:                                              ; preds = %389
  %397 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %398 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %396
  %402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401, %396
  br label %404

404:                                              ; preds = %403, %394
  %405 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %406 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 8
  %408 = icmp sgt i32 %407, 1
  br i1 %408, label %409, label %423

409:                                              ; preds = %404
  %410 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %411 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %410, i32 0, i32 9
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* %7, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %409
  %416 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %417 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %416, i32 0, i32 5
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER, align 8
  %420 = icmp ne i64 %418, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %415
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %415, %409, %404
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %425

425:                                              ; preds = %423
  %426 = load i32, i32* %7, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %7, align 4
  br label %346

428:                                              ; preds = %346
  br label %429

429:                                              ; preds = %428, %55
  %430 = load i32, i32* %6, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %6, align 4
  br label %43

432:                                              ; preds = %43
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hdaa_dump_audio_formats(i32, i32, i32) #1

declare dso_local i32 @hdaa_dump_amp(i32, i64, i8*) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_LR_SWAP(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_POWER_CTRL(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_UNSOL_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_PROC_WIDGET(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_STRIPE(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @HDA_PARAM_AUDIO_WIDGET_CAP_CC(i32) #1

declare dso_local i32 @hdaa_audio_ctl_ossmixer_mask2allname(i64, i8*, i32) #1

declare dso_local i32 @hdaa_dump_pin(%struct.hdaa_widget*) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_OUT_AMP(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_IN_AMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
