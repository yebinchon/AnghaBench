; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_pipe_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_pipe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer_queue = type { %struct.usb_xfer* }
%struct.usb_xfer = type { i64, i64, i64, %struct.TYPE_15__, i64, %struct.usb_xfer_root*, %struct.TYPE_9__, %struct.usb_endpoint* }
%struct.TYPE_15__ = type { i32 }
%struct.usb_xfer_root = type { i32, %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_13__*, %struct.TYPE_11__, i32*, %struct.TYPE_10__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*, i32*)* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.usb_xfer_root* }
%struct.TYPE_9__ = type { i64 }
%struct.usb_endpoint = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 (%struct.usb_xfer*)* }
%struct.TYPE_14__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_BULK = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"No stall handler\0A\00", align 1
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@usbd_transfer_start_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USBPF_XFERTAP_SUBMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_pipe_start(%struct.usb_xfer_queue* %0) #0 {
  %2 = alloca %struct.usb_xfer_queue*, align 8
  %3 = alloca %struct.usb_endpoint*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_xfer_root*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer_queue* %0, %struct.usb_xfer_queue** %2, align 8
  %9 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %2, align 8
  %10 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %9, i32 0, i32 0
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %10, align 8
  store %struct.usb_xfer* %11, %struct.usb_xfer** %4, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 7
  %14 = load %struct.usb_endpoint*, %struct.usb_endpoint** %13, align 8
  store %struct.usb_endpoint* %14, %struct.usb_endpoint** %3, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 5
  %17 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %16, align 8
  %18 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @USB_BUS_LOCK_ASSERT(i32 %19, i32 %20)
  %22 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %23 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %200

27:                                               ; preds = %1
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %138

33:                                               ; preds = %27
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 5
  %39 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %38, align 8
  store %struct.usb_xfer_root* %39, %struct.usb_xfer_root** %7, align 8
  %40 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %7, align 8
  %41 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %40, i32 0, i32 1
  %42 = load %struct.usb_device*, %struct.usb_device** %41, align 8
  store %struct.usb_device* %42, %struct.usb_device** %6, align 8
  %43 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %44 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %43, i32 0, i32 2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UE_XFERTYPE, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @UE_BULK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @UE_INTERRUPT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %113

57:                                               ; preds = %53, %33
  store i32 1, i32* %8, align 4
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USB_MODE_DEVICE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32 (%struct.usb_device*, %struct.usb_endpoint*, i32*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*, i32*)** %70, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %73 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %74 = call i32 %71(%struct.usb_device* %72, %struct.usb_endpoint* %73, i32* %8)
  br label %106

75:                                               ; preds = %57
  %76 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %78, i64 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %75
  %83 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %88, align 8
  store %struct.usb_xfer_root* %89, %struct.usb_xfer_root** %7, align 8
  %90 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %7, align 8
  %91 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @USB_BUS_CS_PROC(i32 %92)
  %94 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = call i32 @usb_proc_msignal(i32 %93, i32* %97, i32* %101)
  br label %105

103:                                              ; preds = %75
  %104 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %82
  br label %106

106:                                              ; preds = %105, %64
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %111 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %200

112:                                              ; preds = %106
  br label %137

113:                                              ; preds = %53
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @USB_MODE_DEVICE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %126 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*)** %130, align 8
  %132 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %133 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %134 = call i32 %131(%struct.usb_device* %132, %struct.usb_endpoint* %133)
  br label %135

135:                                              ; preds = %124, %117
  br label %136

136:                                              ; preds = %135, %113
  br label %137

137:                                              ; preds = %136, %112
  br label %138

138:                                              ; preds = %137, %27
  %139 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %140 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %145 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  %146 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %147 = call i32 @usbd_transfer_done(%struct.usb_xfer* %146, i32 0)
  br label %200

148:                                              ; preds = %138
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %150 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %148
  %154 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %155 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @UE_XFERTYPE, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @UE_BULK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %153
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @UE_CONTROL, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164, %153
  %169 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %170 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %171 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @usbd_transfer_timeout_ms(%struct.usb_xfer* %169, i32* @usbd_transfer_start_cb, i64 %172)
  br label %200

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %148
  %176 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %178 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %181 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %175
  %185 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %186 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %185, i32 0, i32 1
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %188, align 8
  %190 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %191 = call i32 %189(%struct.usb_xfer* %190)
  br label %192

192:                                              ; preds = %184, %175
  %193 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %194 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %199 = call i32 @usbd_transfer_done(%struct.usb_xfer* %198, i32 0)
  br label %200

200:                                              ; preds = %26, %109, %143, %168, %197, %192
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @usb_proc_msignal(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_CS_PROC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_timeout_ms(%struct.usb_xfer*, i32*, i64) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
