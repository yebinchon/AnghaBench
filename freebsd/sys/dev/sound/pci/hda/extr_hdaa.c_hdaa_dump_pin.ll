; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"        Pin cap: 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" ISC\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" TRQD\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" PDC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" HP\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" BAL\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" HDMI\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" VREF[\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" 50\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" 80\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" 100\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" GROUND\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" HIZ\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" EAPD\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" DP\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" HBR\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"     Pin config: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"    Pin control: 0x%08x\00", align 1
@HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c" EPTs\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c" VREFs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_widget*)* @hdaa_dump_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_pin(%struct.hdaa_widget* %0) #0 {
  %2 = alloca %struct.hdaa_widget*, align 8
  %3 = alloca i32, align 4
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %2, align 8
  %4 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %5 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %10 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @HDA_PARAM_PIN_CAP_TRIGGER_REQD(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @HDA_PARAM_PIN_CAP_BALANCED_IO_PINS(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @HDA_PARAM_PIN_CAP_HDMI(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_50(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_80(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_100(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %3, align 4
  %88 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_GROUND(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_HIZ(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %63
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @HDA_PARAM_PIN_CAP_EAPD_CAP(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i32, i32* %3, align 4
  %108 = call i64 @HDA_PARAM_PIN_CAP_DP(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i32, i32* %3, align 4
  %114 = call i64 @HDA_PARAM_PIN_CAP_HBR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %112
  %119 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %120 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %121 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %126 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @device_printf(i32 %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %129)
  %131 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %132 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %131, i32 0, i32 2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %137 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %140)
  %142 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %143 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %118
  %151 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %118
  %153 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %154 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %152
  %164 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %165 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %163
  %175 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %176 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %174
  %182 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %183 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %188 = and i32 %186, %187
  %189 = icmp eq i32 %188, 3
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %204

192:                                              ; preds = %181
  %193 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %194 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %192
  br label %204

204:                                              ; preds = %203, %190
  br label %217

205:                                              ; preds = %174
  %206 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %207 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %205
  %215 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %205
  br label %217

217:                                              ; preds = %216, %204
  %218 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_TRIGGER_REQD(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_BALANCED_IO_PINS(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_HDMI(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_50(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_80(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_100(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_GROUND(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_HIZ(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_EAPD_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_DP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_HBR(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
