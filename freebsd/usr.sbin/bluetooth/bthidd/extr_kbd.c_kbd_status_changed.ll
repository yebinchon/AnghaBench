; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_kbd_status_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_kbd_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@NO_REPORT_ID = common dso_local global i64 0, align 8
@hid_output = common dso_local global i32 0, align 4
@HUP_LEDS = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Output HID report IDs for %s do not match: %d vs. %d. Please report\00", align 1
@LED_NUM = common dso_local global i64 0, align 8
@LED_CAP = common dso_local global i64 0, align 8
@LED_SCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kbd_status_changed(%struct.TYPE_15__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 8
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @memcpy(%struct.TYPE_12__* %7, i64* %23, i32 8)
  store i64 0, i64* %8, align 8
  %25 = load i64, i64* @NO_REPORT_ID, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  %28 = call %struct.TYPE_14__* @get_hid_device(i32* %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %10, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 162, i64* %34, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @hid_output, align 4
  %43 = shl i32 1, %42
  %44 = call i32 @hid_start_parse(i32 %41, i32 %43, i32 -1)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %126, %3
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @hid_get_item(i32 %46, %struct.TYPE_13__* %12)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @HID_PAGE(i32 %51)
  %53 = load i64, i64* @HUP_LEDS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %126

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @NO_REPORT_ID, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  br label %79

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* @LOG_WARNING, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = call i32 @bt_ntoa(i32* %72, i32* null)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @syslog(i32 %70, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %69, %64
  br label %79

79:                                               ; preds = %78, %61
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @HID_USAGE(i32 %81)
  switch i32 %82, label %125 [
    i32 1, label %83
    i32 2, label %97
    i32 3, label %111
  ]

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LED_NUM, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = call i32 @hid_set_data(i64* %91, %struct.TYPE_13__* %12, i32 1)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i64, i64* @LED_NUM, align 8
  %95 = load i64, i64* %13, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %13, align 8
  br label %125

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @LED_CAP, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64*, i64** %5, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = call i32 @hid_set_data(i64* %105, %struct.TYPE_13__* %12, i32 1)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load i64, i64* @LED_CAP, align 8
  %109 = load i64, i64* %13, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %13, align 8
  br label %125

111:                                              ; preds = %79
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LED_SCR, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i64*, i64** %5, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = call i32 @hid_set_data(i64* %119, %struct.TYPE_13__* %12, i32 1)
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i64, i64* @LED_SCR, align 8
  %123 = load i64, i64* %13, align 8
  %124 = or i64 %123, %122
  store i64 %124, i64* %13, align 8
  br label %125

125:                                              ; preds = %79, %121, %107, %93
  br label %126

126:                                              ; preds = %125, %49
  br label %45

127:                                              ; preds = %45
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @hid_end_parse(i32 %128)
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @NO_REPORT_ID, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load i64*, i64** %5, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %5, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64*, i64** %5, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %133, %127
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i64*, i64** %5, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* @NO_REPORT_ID, align 8
  %152 = icmp ne i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 3, i32 2
  %155 = call i32 @write(i32 %148, i64* %149, i32 %154)
  br label %156

156:                                              ; preds = %145, %142
  %157 = load i64, i64* %8, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %156
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = call i32 @uinput_rep_leds(i32 %174, i64 %176, i64 %177)
  br label %179

179:                                              ; preds = %171, %166, %159, %156
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i64*, i32) #1

declare dso_local %struct.TYPE_14__* @get_hid_device(i32*) #1

declare dso_local i32 @hid_start_parse(i32, i32, i32) #1

declare dso_local i64 @hid_get_item(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @HID_PAGE(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @HID_USAGE(i32) #1

declare dso_local i32 @hid_set_data(i64*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @hid_end_parse(i32) #1

declare dso_local i32 @write(i32, i64*, i32) #1

declare dso_local i32 @uinput_rep_leds(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
