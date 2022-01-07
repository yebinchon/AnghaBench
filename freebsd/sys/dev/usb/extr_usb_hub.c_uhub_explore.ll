; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_explore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_explore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_3__, i32, %struct.usb_hub* }
%struct.TYPE_3__ = type { i64 }
%struct.usb_hub = type { i64, %struct.usb_port*, %struct.uhub_softc* }
%struct.usb_port = type { i64 }
%struct.uhub_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"udev=%p addr=%d\0A\00", align 1
@USB_ERR_TOO_DEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Device is suspended!\0A\00", align 1
@UPS_C_OVERCURRENT_INDICATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Overcurrent on port %u.\0A\00", align 1
@UHF_C_PORT_OVER_CURRENT = common dso_local global i32 0, align 4
@UHUB_FLAG_DID_EXPLORE = common dso_local global i32 0, align 4
@UPS_C_CONNECT_STATUS = common dso_local global i32 0, align 4
@UPS_C_PORT_ENABLED = common dso_local global i32 0, align 4
@UHF_C_PORT_ENABLE = common dso_local global i32 0, align 4
@UPS_PORT_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"illegal enable change, port %d\0A\00", align 1
@USB_RESTART_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"port error, giving up port %d\0A\00", align 1
@UPS_C_SUSPEND = common dso_local global i32 0, align 4
@UPS_C_PORT_LINK_STATE = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_device*)* @uhub_explore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uhub_explore(%struct.usb_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca %struct.uhub_softc*, align 8
  %6 = alloca %struct.usb_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 2
  %13 = load %struct.usb_hub*, %struct.usb_hub** %12, align 8
  store %struct.usb_hub* %13, %struct.usb_hub** %4, align 8
  %14 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %15 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %14, i32 0, i32 2
  %16 = load %struct.uhub_softc*, %struct.uhub_softc** %15, align 8
  store %struct.uhub_softc* %16, %struct.uhub_softc** %5, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = ptrtoint %struct.usb_device* %17 to i64
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, i64, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = call i64 @uhub_is_too_deep(%struct.usb_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @USB_ERR_TOO_DEEP, align 8
  store i64 %27, i64* %2, align 8
  br label %211

28:                                               ; preds = %1
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %211

36:                                               ; preds = %28
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = call i64 @usbd_enum_lock(%struct.usb_device* %37)
  store i64 %38, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %195, %36
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %42 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %198

45:                                               ; preds = %39
  %46 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %47 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %46, i32 0, i32 1
  %48 = load %struct.usb_port*, %struct.usb_port** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %48, i64 %49
  store %struct.usb_port* %50, %struct.usb_port** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @uhub_read_port_status(%struct.uhub_softc* %53, i64 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %198

59:                                               ; preds = %45
  %60 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %61 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UPS_C_OVERCURRENT_INDICATOR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @UHF_C_PORT_OVER_CURRENT, align 4
  %73 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %70, i32* null, i64 %71, i32 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %198

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %80 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UHUB_FLAG_DID_EXPLORE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @UPS_C_CONNECT_STATUS, align 4
  %87 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %88 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %94 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @UPS_C_PORT_ENABLED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %151

100:                                              ; preds = %92
  %101 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @UHF_C_PORT_ENABLE, align 4
  %104 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %101, i32* null, i64 %102, i32 %103)
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %198

108:                                              ; preds = %100
  %109 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %110 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @UPS_C_CONNECT_STATUS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %150

117:                                              ; preds = %108
  %118 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %119 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UPS_PORT_ENABLED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i64, i64* %8, align 8
  %127 = call i32 (i32, i8*, i64, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %126)
  br label %149

128:                                              ; preds = %117
  %129 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %130 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @USB_RESTART_MAX, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i64, i64* %8, align 8
  %136 = call i32 (i32, i8*, i64, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %135)
  br label %148

137:                                              ; preds = %128
  %138 = load i32, i32* @UPS_C_CONNECT_STATUS, align 4
  %139 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %140 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 4
  %144 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %145 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %137, %134
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149, %116
  br label %151

151:                                              ; preds = %150, %92
  %152 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %153 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @UPS_C_CONNECT_STATUS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i64 @uhub_reattach_port(%struct.uhub_softc* %160, i64 %161)
  store i64 %162, i64* %7, align 8
  %163 = load i64, i64* %7, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %198

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %151
  %168 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %169 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @UPS_C_SUSPEND, align 4
  %173 = load i32, i32* @UPS_C_PORT_LINK_STATE, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %179 = load i64, i64* %8, align 8
  %180 = call i64 @uhub_suspend_resume_port(%struct.uhub_softc* %178, i64 %179)
  store i64 %180, i64* %7, align 8
  %181 = load i64, i64* %7, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %198

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %167
  %186 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %187 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %188 = call i64 @uhub_explore_sub(%struct.uhub_softc* %186, %struct.usb_port* %187)
  store i64 %188, i64* %7, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %195

192:                                              ; preds = %185
  %193 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %194 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %192, %191
  %196 = load i64, i64* %9, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %9, align 8
  br label %39

198:                                              ; preds = %183, %165, %107, %76, %58, %39
  %199 = load i64, i64* %10, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %203 = call i32 @usbd_enum_unlock(%struct.usb_device* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* @UHUB_FLAG_DID_EXPLORE, align 4
  %206 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %207 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  store i64 %210, i64* %2, align 8
  br label %211

211:                                              ; preds = %204, %34, %26
  %212 = load i64, i64* %2, align 8
  ret i64 %212
}

declare dso_local i32 @DPRINTFN(i32, i8*, i64, ...) #1

declare dso_local i64 @uhub_is_too_deep(%struct.usb_device*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i64 @uhub_read_port_status(%struct.uhub_softc*, i64) #1

declare dso_local i64 @usbd_req_clear_port_feature(%struct.usb_device*, i32*, i64, i32) #1

declare dso_local i64 @uhub_reattach_port(%struct.uhub_softc*, i64) #1

declare dso_local i64 @uhub_suspend_resume_port(%struct.uhub_softc*, i64) #1

declare dso_local i64 @uhub_explore_sub(%struct.uhub_softc*, %struct.usb_port*) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
