; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i64, i8*, %struct.usb_xfer*, %struct.TYPE_6__* }
%struct.usb_xfer = type { i32, i32, i32, i32, i8**, %struct.octusb_td**, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.octusb_td = type { i32, i32, i32, i8*, %struct.octusb_td*, %struct.octusb_td*, %struct.usb_page_cache*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.usb_page_cache = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.usb_device*, i32 }
%struct.usb_device = type { %struct.usb_device*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_page_search = type { %struct.octusb_td*, i32 }
%struct.octusb_softc = type { i32 }
%struct.octusb_qh = type { i32, i32, i32, i8*, %struct.octusb_qh*, %struct.octusb_qh*, %struct.usb_page_cache*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i8* null, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@OCTUSB_MAX_FIXUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @octusb_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octusb_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_page_search, align 8
  %4 = alloca %struct.usb_page_cache*, align 8
  %5 = alloca %struct.octusb_softc*, align 8
  %6 = alloca %struct.octusb_qh*, align 8
  %7 = alloca %struct.usb_xfer*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.octusb_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %13 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %14 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %13, i32 0, i32 6
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @OCTUSB_BUS2SC(i32 %17)
  %19 = bitcast i8* %18 to %struct.octusb_softc*
  store %struct.octusb_softc* %19, %struct.octusb_softc** %5, align 8
  %20 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %21 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %20, i32 0, i32 5
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  store %struct.usb_xfer* %22, %struct.usb_xfer** %7, align 8
  store %struct.octusb_qh* null, %struct.octusb_qh** %6, align 8
  %23 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %24 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %23, i32 0, i32 0
  store i32 1024, i32* %24, align 8
  %25 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %26 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %25, i32 0, i32 1
  store i32 3, i32* %26, align 4
  %27 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %28 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %27, i32 0, i32 2
  store i32 3072, i32* %28, align 8
  %29 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %30 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %29)
  %31 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %32 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %293

36:                                               ; preds = %1
  %37 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %38 = load i32, i32* @USB_HOST_ALIGN, align 4
  %39 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %37, %struct.usb_page_cache** %4, i32 96, i32 %38, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %43 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %44 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  br label %293

45:                                               ; preds = %36
  %46 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %47 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %205

50:                                               ; preds = %45
  %51 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %52 = call i32 @usbd_get_page(%struct.usb_page_cache* %51, i32 0, %struct.usb_page_search* %3)
  %53 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %54 = load %struct.octusb_td*, %struct.octusb_td** %53, align 8
  %55 = bitcast %struct.octusb_td* %54 to %struct.octusb_qh*
  store %struct.octusb_qh* %55, %struct.octusb_qh** %6, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 6
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @OCTUSB_BUS2SC(i32 %60)
  %62 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %63 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %62, i32 0, i32 16
  store i8* %61, i8** %63, align 8
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %65 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %68 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 8
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %73 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 4
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %75 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %78 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %77, i32 0, i32 13
  store i32 %76, i32* %78, align 8
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %80 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %79, i32 0, i32 7
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %87 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %89 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %92 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %91, i32 0, i32 12
  store i32 %90, i32* %92, align 4
  %93 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %94 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %93, i32 0, i32 6
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 @usbd_get_speed(%struct.TYPE_10__* %97)
  %99 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %100 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 8
  %101 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %102 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %101, i32 0, i32 6
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %109 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %108, i32 0, i32 10
  store i32 %107, i32* %109, align 4
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %111 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %110, i32 0, i32 6
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.usb_device*, %struct.usb_device** %115, align 8
  store %struct.usb_device* %116, %struct.usb_device** %8, align 8
  br label %117

117:                                              ; preds = %127, %50
  %118 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %119 = icmp ne %struct.usb_device* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %122 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %121, i32 0, i32 0
  %123 = load %struct.usb_device*, %struct.usb_device** %122, align 8
  %124 = icmp ne %struct.usb_device* %123, null
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi i1 [ false, %117 ], [ %124, %120 ]
  br i1 %126, label %127, label %136

127:                                              ; preds = %125
  %128 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %129 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %132 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 4
  %133 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %134 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %133, i32 0, i32 0
  %135 = load %struct.usb_device*, %struct.usb_device** %134, align 8
  store %struct.usb_device* %135, %struct.usb_device** %8, align 8
  br label %117

136:                                              ; preds = %125
  %137 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %138 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %137, i32 0, i32 7
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @UE_XFERTYPE, align 4
  %145 = and i32 %143, %144
  switch i32 %145, label %177 [
    i32 129, label %146
    i32 128, label %170
  ]

146:                                              ; preds = %136
  %147 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %148 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %147, i32 0, i32 6
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = call i32 @usbd_get_speed(%struct.TYPE_10__* %151)
  %153 = load i32, i32* @USB_SPEED_HIGH, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %157 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %158, 8
  %160 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %161 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %169

162:                                              ; preds = %146
  %163 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %164 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %165, 1
  %167 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %168 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %162, %155
  br label %180

170:                                              ; preds = %136
  %171 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %172 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 1, %173
  %175 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %176 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %180

177:                                              ; preds = %136
  %178 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %179 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %170, %169
  %181 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %182 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, 3
  %185 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %186 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %188 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %187, i32 0, i32 6
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %195 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 8
  %196 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %197 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %196, i32 0, i32 6
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %204 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %180, %45
  %206 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %207 = bitcast %struct.octusb_qh* %206 to %struct.octusb_td*
  %208 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %209 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %208, i32 0, i32 5
  %210 = load %struct.octusb_td**, %struct.octusb_td*** %209, align 8
  %211 = getelementptr inbounds %struct.octusb_td*, %struct.octusb_td** %210, i64 0
  store %struct.octusb_td* %207, %struct.octusb_td** %211, align 8
  %212 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %213 = load i32, i32* @OCTUSB_MAX_FIXUP, align 4
  %214 = load i32, i32* @OCTUSB_MAX_FIXUP, align 4
  %215 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %212, %struct.usb_page_cache** %4, i32 %213, i32 %214, i32 1)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %205
  %218 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %219 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %220 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %219, i32 0, i32 4
  store i8* %218, i8** %220, align 8
  br label %293

221:                                              ; preds = %205
  %222 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %223 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %221
  %227 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %228 = call i32 @usbd_get_page(%struct.usb_page_cache* %227, i32 0, %struct.usb_page_search* %3)
  %229 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %232 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 8
  %233 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %234 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %235 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %234, i32 0, i32 6
  store %struct.usb_page_cache* %233, %struct.usb_page_cache** %235, align 8
  %236 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %237 = load %struct.octusb_td*, %struct.octusb_td** %236, align 8
  %238 = bitcast %struct.octusb_td* %237 to %struct.octusb_qh*
  %239 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %240 = getelementptr inbounds %struct.octusb_qh, %struct.octusb_qh* %239, i32 0, i32 5
  store %struct.octusb_qh* %238, %struct.octusb_qh** %240, align 8
  br label %241

241:                                              ; preds = %226, %221
  store i8* null, i8** %9, align 8
  %242 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %243 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %11, align 4
  %247 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %248 = load i32, i32* @USB_HOST_ALIGN, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %247, %struct.usb_page_cache** %4, i32 96, i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %241
  %253 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %254 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %255 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %254, i32 0, i32 4
  store i8* %253, i8** %255, align 8
  br label %293

256:                                              ; preds = %241
  %257 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %258 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %287

261:                                              ; preds = %256
  store i32 0, i32* %10, align 4
  br label %262

262:                                              ; preds = %283, %261
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %286

266:                                              ; preds = %262
  %267 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %267, i64 %269
  %271 = call i32 @usbd_get_page(%struct.usb_page_cache* %270, i32 0, %struct.usb_page_search* %3)
  %272 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %273 = load %struct.octusb_td*, %struct.octusb_td** %272, align 8
  store %struct.octusb_td* %273, %struct.octusb_td** %12, align 8
  %274 = load %struct.octusb_qh*, %struct.octusb_qh** %6, align 8
  %275 = bitcast %struct.octusb_qh* %274 to %struct.octusb_td*
  %276 = load %struct.octusb_td*, %struct.octusb_td** %12, align 8
  %277 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %276, i32 0, i32 4
  store %struct.octusb_td* %275, %struct.octusb_td** %277, align 8
  %278 = load i8*, i8** %9, align 8
  %279 = load %struct.octusb_td*, %struct.octusb_td** %12, align 8
  %280 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %279, i32 0, i32 3
  store i8* %278, i8** %280, align 8
  %281 = load %struct.octusb_td*, %struct.octusb_td** %12, align 8
  %282 = bitcast %struct.octusb_td* %281 to i8*
  store i8* %282, i8** %9, align 8
  br label %283

283:                                              ; preds = %266
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %10, align 4
  br label %262

286:                                              ; preds = %262
  br label %287

287:                                              ; preds = %286, %256
  %288 = load i8*, i8** %9, align 8
  %289 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %290 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %289, i32 0, i32 4
  %291 = load i8**, i8*** %290, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i64 0
  store i8* %288, i8** %292, align 8
  br label %293

293:                                              ; preds = %287, %252, %217, %41, %35
  ret void
}

declare dso_local i8* @OCTUSB_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params*, %struct.usb_page_cache**, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usbd_get_speed(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
