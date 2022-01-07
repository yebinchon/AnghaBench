; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_dev_suspend_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_dev_suspend_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_device*, i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.usb_device*)* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"udev=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Port %u is busy on the HUB!\0A\00", align 1
@UF_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Setting device remote wakeup failed\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@UHF_PORT_SUSPEND = common dso_local global i32 0, align 4
@usb_port_resume_delay = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Suspend was cancelled!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Suspending port failed\0A\00", align 1
@UPS_PORT_LS_U3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @usb_dev_suspend_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dev_suspend_peer(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  br label %8

8:                                                ; preds = %211, %1
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = icmp eq %struct.usb_device* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %215

12:                                               ; preds = %8
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %215

19:                                               ; preds = %12
  %20 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  %23 = icmp eq %struct.usb_device* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %215

25:                                               ; preds = %19
  %26 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %27 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %68, %32
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %50, %51
  %53 = call %struct.usb_device* @usb_bus_port_get_device(%struct.TYPE_10__* %45, i64 %52)
  store %struct.usb_device* %53, %struct.usb_device** %3, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %55 = icmp eq %struct.usb_device* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %68

57:                                               ; preds = %42
  %58 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  br label %215

68:                                               ; preds = %63, %56
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %38

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71, %25
  %73 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %74 = call i64 @usb_peer_can_wakeup(%struct.usb_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %78 = load i32, i32* @UF_DEVICE_REMOTE_WAKEUP, align 4
  %79 = call i32 @usbd_req_set_device_feature(%struct.usb_device* %77, i32* null, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84, %72
  %86 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @USB_BUS_LOCK(%struct.TYPE_10__* %88)
  %90 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %91 = call i32 @usb_peer_should_wakeup(%struct.usb_device* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %96 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %85
  %99 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_10__* %101)
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %145

105:                                              ; preds = %98
  %106 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %107 = call i64 @usb_peer_can_wakeup(%struct.usb_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %111 = load i32, i32* @UF_DEVICE_REMOTE_WAKEUP, align 4
  %112 = call i32 @usbd_req_clear_device_feature(%struct.usb_device* %110, i32* null, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %109
  br label %118

118:                                              ; preds = %117, %105
  %119 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @USB_MODE_DEVICE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %118
  %126 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %127 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %126, i32 0, i32 0
  %128 = load %struct.usb_device*, %struct.usb_device** %127, align 8
  %129 = call i32 @usb_dev_resume_peer(%struct.usb_device* %128)
  %130 = call i32 @USB_MS_TO_TICKS(i32 20)
  %131 = call i32 @usb_pause_mtx(i32* null, i32 %130)
  %132 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %133 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %132, i32 0, i32 0
  %134 = load %struct.usb_device*, %struct.usb_device** %133, align 8
  %135 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %136 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @UHF_PORT_SUSPEND, align 4
  %139 = call i32 @usbd_req_clear_port_feature(%struct.usb_device* %134, i32* null, i32 %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* @usb_port_resume_delay, align 4
  %141 = call i32 @USB_MS_TO_TICKS(i32 %140)
  %142 = call i32 @usb_pause_mtx(i32* null, i32 %141)
  br label %143

143:                                              ; preds = %125, %118
  %144 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %215

145:                                              ; preds = %98
  %146 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %147 = call i32 @usbd_sr_lock(%struct.usb_device* %146)
  %148 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %149 = call i32 @usb_suspend_resume(%struct.usb_device* %148, i32 1)
  store i32 %149, i32* %4, align 4
  %150 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %151 = call i32 @usbd_sr_unlock(%struct.usb_device* %150)
  %152 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 2
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %157, align 8
  %159 = icmp ne i32 (%struct.usb_device*)* %158, null
  br i1 %159, label %160, label %179

160:                                              ; preds = %145
  %161 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32 (%struct.usb_device*)*, i32 (%struct.usb_device*)** %166, align 8
  %168 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %169 = call i32 %167(%struct.usb_device* %168)
  %170 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %171 = call i32 @usbd_get_dma_delay(%struct.usb_device* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %160
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @USB_MS_TO_TICKS(i32 %175)
  %177 = call i32 @usb_pause_mtx(i32* null, i32 %176)
  br label %178

178:                                              ; preds = %174, %160
  br label %179

179:                                              ; preds = %178, %145
  %180 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %181 = call i64 @usb_device_20_compatible(%struct.usb_device* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %179
  %184 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 0
  %186 = load %struct.usb_device*, %struct.usb_device** %185, align 8
  %187 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %188 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @UHF_PORT_SUSPEND, align 4
  %191 = call i32 @usbd_req_set_port_feature(%struct.usb_device* %186, i32* null, i32 %189, i32 %190)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %215

196:                                              ; preds = %183
  br label %211

197:                                              ; preds = %179
  %198 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %199 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %198, i32 0, i32 0
  %200 = load %struct.usb_device*, %struct.usb_device** %199, align 8
  %201 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %202 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @UPS_PORT_LS_U3, align 4
  %205 = call i32 @usbd_req_set_port_link_state(%struct.usb_device* %200, i32* null, i32 %203, i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %197
  %209 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %215

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %210, %196
  %212 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %213 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %212, i32 0, i32 0
  %214 = load %struct.usb_device*, %struct.usb_device** %213, align 8
  store %struct.usb_device* %214, %struct.usb_device** %2, align 8
  br label %8

215:                                              ; preds = %208, %194, %143, %64, %24, %18, %11
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_device* @usb_bus_port_get_device(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i64 @usb_peer_can_wakeup(%struct.usb_device*) #1

declare dso_local i32 @usbd_req_set_device_feature(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @usb_peer_should_wakeup(%struct.usb_device*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @usbd_req_clear_device_feature(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @usb_dev_resume_peer(%struct.usb_device*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i32 @usbd_req_clear_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @usbd_sr_lock(%struct.usb_device*) #1

declare dso_local i32 @usb_suspend_resume(%struct.usb_device*, i32) #1

declare dso_local i32 @usbd_sr_unlock(%struct.usb_device*) #1

declare dso_local i32 @usbd_get_dma_delay(%struct.usb_device*) #1

declare dso_local i64 @usb_device_20_compatible(%struct.usb_device*) #1

declare dso_local i32 @usbd_req_set_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @usbd_req_set_port_link_state(%struct.usb_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
