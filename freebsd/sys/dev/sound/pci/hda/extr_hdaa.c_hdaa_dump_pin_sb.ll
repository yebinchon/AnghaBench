; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.hdaa_widget = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

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
@.str.20 = private unnamed_addr constant [24 x i8] c"     Pin config: 0x%08x\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c" as=%d seq=%d device=%s conn=%s ctype=%s loc=%s color=%s misc=%d\0A\00", align 1
@HDA_DEVS = common dso_local global i32* null, align 8
@HDA_CONNS = common dso_local global i32* null, align 8
@HDA_CONNECTORS = common dso_local global i32* null, align 8
@HDA_LOCS = common dso_local global i32* null, align 8
@HDA_COLORS = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [24 x i8] c"    Pin control: 0x%08x\00", align 1
@HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE = common dso_local global i32 0, align 4
@HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c" EPTs\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" VREFs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.hdaa_widget*)* @hdaa_dump_pin_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_pin_sb(%struct.sbuf* %0, %struct.hdaa_widget* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.hdaa_widget* %1, %struct.hdaa_widget** %4, align 8
  %7 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %8 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %20 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @HDA_PARAM_PIN_CAP_TRIGGER_REQD(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %27 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %34 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %41 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %48 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %55 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @HDA_PARAM_PIN_CAP_BALANCED_IO_PINS(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %62 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @HDA_PARAM_PIN_CAP_HDMI(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %69 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %70
  %75 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %76 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_50(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %82 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_80(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %89 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_100(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %96 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_GROUND(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %103 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL_HIZ(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %110 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104
  %112 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %113 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %70
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @HDA_PARAM_PIN_CAP_EAPD_CAP(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %120 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* %5, align 4
  %123 = call i64 @HDA_PARAM_PIN_CAP_DP(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %127 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @HDA_PARAM_PIN_CAP_HBR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %134 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %128
  %136 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %137 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %138 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %139 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %6, align 4
  %143 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %144)
  %146 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @HDA_CONFIG_DEFAULTCONF_ASSOCIATION(i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @HDA_CONFIG_DEFAULTCONF_SEQUENCE(i32 %149)
  %151 = load i32*, i32** @HDA_DEVS, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @HDA_CONFIG_DEFAULTCONF_DEVICE(i32 %152)
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** @HDA_CONNS, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i64 @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY(i32 %157)
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** @HDA_CONNECTORS, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i64 @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE(i32 %162)
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** @HDA_LOCS, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i64 @HDA_CONFIG_DEFAULTCONF_LOCATION(i32 %167)
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** @HDA_COLORS, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i64 @HDA_CONFIG_DEFAULTCONF_COLOR(i32 %172)
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @HDA_CONFIG_DEFAULTCONF_MISC(i32 %176)
  %178 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %146, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i64 0, i64 0), i32 %148, i32 %150, i32 %155, i32 %160, i32 %165, i32 %170, i32 %175, i32 %177)
  %179 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %180 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %181 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %184)
  %186 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %187 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_HPHN_ENABLE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %135
  %195 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %196 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %135
  %198 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %199 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_IN_ENABLE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %208 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %197
  %210 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %211 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_OUT_ENABLE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %209
  %219 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %220 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %209
  %222 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %223 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %254

228:                                              ; preds = %221
  %229 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %230 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 3
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  %238 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %239 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %253

240:                                              ; preds = %228
  %241 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %242 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %240
  %250 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %251 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %240
  br label %253

253:                                              ; preds = %252, %237
  br label %267

254:                                              ; preds = %221
  %255 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %256 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @HDA_CMD_SET_PIN_WIDGET_CTRL_VREF_ENABLE_MASK, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %254
  %264 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %265 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %266

266:                                              ; preds = %263, %254
  br label %267

267:                                              ; preds = %266, %253
  %268 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %269 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(i32) #1

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

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_ASSOCIATION(i32) #1

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_SEQUENCE(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_DEVICE(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_LOCATION(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_COLOR(i32) #1

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_MISC(i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
