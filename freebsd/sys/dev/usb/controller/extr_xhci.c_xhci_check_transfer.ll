; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_check_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_check_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.xhci_endpoint_ext* }
%struct.xhci_endpoint_ext = type { i64, %struct.usb_xfer** }
%struct.usb_xfer = type { i8*, %struct.xhci_td*, %struct.TYPE_8__ }
%struct.xhci_td = type { i64, i32, i32, i32, %struct.xhci_td*, %struct.xhci_td*, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.xhci_trb = type { i32, i32, i32 }

@XHCI_TRB_ERROR_SHORT_PKT = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"slot=%u epno=%u remainder=%u status=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid slot.\0A\00", align 1
@XHCI_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid endpoint.\0A\00", align 1
@XHCI_MAX_TRANSFERS = common dso_local global i32 0, align 4
@USB_EP_MODE_STREAMS = common dso_local global i64 0, align 8
@XHCI_MAX_STREAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"stream_id=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Checking if 0x%016llx == (0x%016llx .. 0x%016llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"New remainder: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"TD is last\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"TD has I/O error\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"short TD has no alternate next\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"TD has short pkt\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Following next TD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_softc*, %struct.xhci_trb*)* @xhci_check_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_check_transfer(%struct.xhci_softc* %0, %struct.xhci_trb* %1) #0 {
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca %struct.xhci_trb*, align 8
  %5 = alloca %struct.xhci_endpoint_ext*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.usb_xfer*, align 8
  %17 = alloca %struct.xhci_td*, align 8
  store %struct.xhci_softc* %0, %struct.xhci_softc** %3, align 8
  store %struct.xhci_trb* %1, %struct.xhci_trb** %4, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le64toh(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32toh(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @XHCI_TRB_2_REM_GET(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @XHCI_TRB_2_ERROR_GET(i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %31 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32toh(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @XHCI_TRB_3_EP_GET(i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @XHCI_TRB_3_SLOT_GET(i32 %36)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @XHCI_TRB_ERROR_SHORT_PKT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %41, %2
  %46 = phi i1 [ false, %2 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %12, align 8
  %53 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50, i32 %51, i64 %52)
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %56 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %280

61:                                               ; preds = %45
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* @XHCI_MAX_ENDPOINTS, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %61
  %69 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %280

70:                                               ; preds = %64
  %71 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %72 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %78, i64 %79
  store %struct.xhci_endpoint_ext* %80, %struct.xhci_endpoint_ext** %5, align 8
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %277, %70
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %88 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @USB_EP_MODE_STREAMS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @XHCI_MAX_STREAMS, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %86
  br label %280

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %81
  %104 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %105 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %104, i32 0, i32 1
  %106 = load %struct.usb_xfer**, %struct.usb_xfer*** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %109 = load i32, i32* %10, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %106, i64 %112
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %113, align 8
  store %struct.usb_xfer* %114, %struct.usb_xfer** %16, align 8
  %115 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %116 = icmp eq %struct.usb_xfer* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %277

118:                                              ; preds = %103
  %119 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %120 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %119, i32 0, i32 1
  %121 = load %struct.xhci_td*, %struct.xhci_td** %120, align 8
  store %struct.xhci_td* %121, %struct.xhci_td** %17, align 8
  %122 = load i64, i64* %7, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %125 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %128 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 8
  %131 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %123, i64 %126, i64 %130)
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %134 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %276

139:                                              ; preds = %118
  %140 = load i64, i64* %6, align 8
  %141 = icmp slt i64 %140, 8
  br i1 %141, label %142, label %276

142:                                              ; preds = %139
  %143 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %144 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @usb_pc_cpu_invalidate(i32 %145)
  %147 = load i64, i64* %6, align 8
  %148 = sdiv i64 %147, 16
  %149 = add nsw i64 %148, 1
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %173, %142
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %154 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %159 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %158, i32 0, i32 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32toh(i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i64 @XHCI_TRB_2_BYTES_GET(i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %157
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %151

176:                                              ; preds = %151
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %180 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %176
  %185 = load i64, i64* %13, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  store i64 0, i64* %13, align 8
  %188 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  store i64 %188, i64* %12, align 8
  %189 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %190 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %187, %184
  br label %193

193:                                              ; preds = %192, %176
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %196 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  %197 = load i64, i64* %12, align 8
  %198 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %199 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %198, i32 0, i32 7
  store i64 %197, i64* %199, align 8
  %200 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %201 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @usb_pc_cpu_flush(i32 %202)
  %204 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %205 = bitcast %struct.xhci_td* %204 to i8*
  %206 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %207 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = icmp eq i8* %205, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %193
  %211 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %212 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %213 = call i32 @xhci_generic_done(%struct.usb_xfer* %212)
  br label %280

214:                                              ; preds = %193
  %215 = load i64, i64* %13, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %219 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %220 = call i32 @xhci_generic_done(%struct.usb_xfer* %219)
  br label %280

221:                                              ; preds = %214
  %222 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %223 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %267

226:                                              ; preds = %221
  %227 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %228 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %227, i32 0, i32 5
  %229 = load %struct.xhci_td*, %struct.xhci_td** %228, align 8
  %230 = icmp eq %struct.xhci_td* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %233 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %234 = call i32 @xhci_generic_done(%struct.usb_xfer* %233)
  br label %280

235:                                              ; preds = %226
  %236 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %237 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %238 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %254, label %242

242:                                              ; preds = %235
  %243 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %244 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %250 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %248, %242, %235
  %255 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %256 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %255, i32 0, i32 5
  %257 = load %struct.xhci_td*, %struct.xhci_td** %256, align 8
  %258 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %259 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %258, i32 0, i32 1
  store %struct.xhci_td* %257, %struct.xhci_td** %259, align 8
  %260 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %261 = call i32 @xhci_activate_transfer(%struct.usb_xfer* %260)
  br label %280

262:                                              ; preds = %248
  %263 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %264 = call i32 @xhci_skip_transfer(%struct.usb_xfer* %263)
  %265 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %266 = call i32 @xhci_generic_done(%struct.usb_xfer* %265)
  br label %280

267:                                              ; preds = %221
  %268 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %269 = load %struct.xhci_td*, %struct.xhci_td** %17, align 8
  %270 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %269, i32 0, i32 4
  %271 = load %struct.xhci_td*, %struct.xhci_td** %270, align 8
  %272 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %273 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %272, i32 0, i32 1
  store %struct.xhci_td* %271, %struct.xhci_td** %273, align 8
  %274 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  %275 = call i32 @xhci_activate_transfer(%struct.usb_xfer* %274)
  br label %280

276:                                              ; preds = %139, %118
  br label %277

277:                                              ; preds = %276, %117
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %81

280:                                              ; preds = %59, %68, %267, %262, %254, %231, %217, %210, %97
  ret void
}

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @XHCI_TRB_2_REM_GET(i32) #1

declare dso_local i64 @XHCI_TRB_2_ERROR_GET(i32) #1

declare dso_local i64 @XHCI_TRB_3_EP_GET(i32) #1

declare dso_local i64 @XHCI_TRB_3_SLOT_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i64 @XHCI_TRB_2_BYTES_GET(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @xhci_generic_done(%struct.usb_xfer*) #1

declare dso_local i32 @xhci_activate_transfer(%struct.usb_xfer*) #1

declare dso_local i32 @xhci_skip_transfer(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
