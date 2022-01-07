; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_pindump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_pindump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32 }
%struct.hdaa_widget = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Dumping AFG pins:\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"nid   0x    as seq device       conn  jack    loc        color   misc\0A\00", align 1
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"    Caps: %2s %3s %2s %4s %4s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"EAPD\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"VREF\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c" Sense: 0x%08x (%sconnected%s)\00", align 1
@HDA_CMD_GET_PIN_SENSE_PRESENCE_DETECT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@HDA_CMD_GET_PIN_SENSE_ELD_VALID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c", ELD valid\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" delay %dus\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"NumGPIO=%d NumGPO=%d NumGPI=%d GPIWake=%d GPIUnsol=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hdaa_pindump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_pindump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.hdaa_devinfo* @device_get_softc(i32 %9)
  store %struct.hdaa_devinfo* %10, %struct.hdaa_devinfo** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i32, i8*, ...) @device_printf(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i32, i8*, ...) @device_printf(i32 %13, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %16 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %155, %1
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %21 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %158

24:                                               ; preds = %18
  %25 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %25, i32 %26)
  store %struct.hdaa_widget* %27, %struct.hdaa_widget** %4, align 8
  %28 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %29 = icmp eq %struct.hdaa_widget* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %32 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24
  br label %155

37:                                               ; preds = %30
  %38 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hdaa_dump_pin_config(%struct.hdaa_widget* %38, i32 %43)
  %45 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %46 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32 %51)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32 %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32 %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @HDA_PARAM_PIN_CAP_EAPD_CAP(i32 %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @HDA_PARAM_PIN_CAP_VREF_CTRL(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %60, i8* %65, i8* %70, i8* %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %37
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %153

84:                                               ; preds = %80, %37
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @HDA_PARAM_PIN_CAP_TRIGGER_REQD(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %91 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @HDA_CMD_SET_PIN_SENSE(i32 0, i32 %92, i32 0)
  %94 = call i32 @hda_command(i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %110, %88
  %96 = load i32, i32* %2, align 4
  %97 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %98 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @HDA_CMD_GET_PIN_SENSE(i32 0, i32 %99)
  %101 = call i32 @hda_command(i32 %96, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 2147483647
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %114

108:                                              ; preds = %104, %95
  %109 = call i32 @DELAY(i32 10)
  br label %110

110:                                              ; preds = %108
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = icmp slt i32 %112, 10000
  br i1 %113, label %95, label %114

114:                                              ; preds = %110, %107
  br label %122

115:                                              ; preds = %84
  store i32 0, i32* %7, align 4
  %116 = load i32, i32* %2, align 4
  %117 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %118 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @HDA_CMD_GET_PIN_SENSE(i32 0, i32 %119)
  %121 = call i32 @hda_command(i32 %116, i32 %120)
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %114
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @HDA_CMD_GET_PIN_SENSE_PRESENCE_DETECT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %130 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %131 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @HDA_CMD_GET_PIN_SENSE_ELD_VALID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %136, %122
  %142 = phi i1 [ false, %122 ], [ %140, %136 ]
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %123, i8* %129, i8* %144)
  %146 = load i32, i32* %7, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32, i32* %7, align 4
  %150 = mul nsw i32 %149, 10
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %141
  br label %153

153:                                              ; preds = %152, %80
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %36
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %18

158:                                              ; preds = %18
  %159 = load i32, i32* %2, align 4
  %160 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %161 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @HDA_PARAM_GPIO_COUNT_NUM_GPIO(i32 %162)
  %164 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %165 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @HDA_PARAM_GPIO_COUNT_NUM_GPO(i32 %166)
  %168 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %169 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @HDA_PARAM_GPIO_COUNT_NUM_GPI(i32 %170)
  %172 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %173 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @HDA_PARAM_GPIO_COUNT_GPI_WAKE(i32 %174)
  %176 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %177 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @HDA_PARAM_GPIO_COUNT_GPI_UNSOL(i32 %178)
  %180 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i8* %163, i8* %167, i8* %171, i8* %175, i8* %179)
  %181 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %182 = call i32 @hdaa_dump_gpi(%struct.hdaa_devinfo* %181)
  %183 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %184 = call i32 @hdaa_dump_gpio(%struct.hdaa_devinfo* %183)
  %185 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %186 = call i32 @hdaa_dump_gpo(%struct.hdaa_devinfo* %185)
  ret void
}

declare dso_local %struct.hdaa_devinfo* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_dump_pin_config(%struct.hdaa_widget*, i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_INPUT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_OUTPUT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_HEADPHONE_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_EAPD_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_VREF_CTRL(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP(i32) #1

declare dso_local i64 @HDA_PARAM_PIN_CAP_TRIGGER_REQD(i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_PIN_SENSE(i32, i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_PIN_SENSE(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32) #1

declare dso_local i8* @HDA_PARAM_GPIO_COUNT_NUM_GPIO(i32) #1

declare dso_local i8* @HDA_PARAM_GPIO_COUNT_NUM_GPO(i32) #1

declare dso_local i8* @HDA_PARAM_GPIO_COUNT_NUM_GPI(i32) #1

declare dso_local i8* @HDA_PARAM_GPIO_COUNT_GPI_WAKE(i32) #1

declare dso_local i8* @HDA_PARAM_GPIO_COUNT_GPI_UNSOL(i32) #1

declare dso_local i32 @hdaa_dump_gpi(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_dump_gpio(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_dump_gpo(%struct.hdaa_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
