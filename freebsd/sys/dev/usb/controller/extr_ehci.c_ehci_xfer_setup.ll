; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i64, i64, i8*, i32*, %struct.usb_xfer*, %struct.TYPE_7__* }
%struct.usb_xfer = type { i32, i32, i32, %struct.TYPE_8__, i8**, i8** }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_page_search = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.usb_page_cache*, i8*, i8*, i8*, i8*, i8* }
%struct.usb_page_cache = type { i32 }

@ehci_device_ctrl_methods = common dso_local global i32 0, align 4
@EHCI_QTD_PAYLOAD_MAX = common dso_local global i8* null, align 8
@ehci_device_bulk_methods = common dso_local global i32 0, align 4
@ehci_device_intr_methods = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_FS_BYTES_PER_HS_UFRAME = common dso_local global i32 0, align 4
@ehci_device_isoc_fs_methods = common dso_local global i32 0, align 4
@ehci_device_isoc_hs_methods = common dso_local global i32 0, align 4
@EHCI_ITD_ALIGN = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i8* null, align 8
@EHCI_LINK_ITD = common dso_local global i32 0, align 4
@EHCI_SITD_ALIGN = common dso_local global i32 0, align 4
@EHCI_LINK_SITD = common dso_local global i32 0, align 4
@EHCI_QTD_ALIGN = common dso_local global i32 0, align 4
@EHCI_QH_ALIGN = common dso_local global i32 0, align 4
@EHCI_LINK_QH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @ehci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_page_search, align 8
  %4 = alloca %struct.usb_page_cache*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_xfer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %17 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %18 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %17, i32 0, i32 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @EHCI_BUS2SC(i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %24 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %23, i32 0, i32 7
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %24, align 8
  store %struct.usb_xfer* %25, %struct.usb_xfer** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %27 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, @ehci_device_ctrl_methods
  br i1 %29, label %30, label %57

30:                                               ; preds = %1
  %31 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %32 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %31, i32 0, i32 0
  store i32 1024, i32* %32, align 8
  %33 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %34 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i8*, i8** @EHCI_QTD_PAYLOAD_MAX, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %38 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %43 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %42)
  store i32 1, i32* %9, align 4
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 1
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %53 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %51, %54
  %56 = add nsw i32 %48, %55
  store i32 %56, i32* %8, align 4
  br label %204

57:                                               ; preds = %1
  %58 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %59 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, @ehci_device_bulk_methods
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %64 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %63, i32 0, i32 0
  store i32 1024, i32* %64, align 8
  %65 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %66 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i8*, i8** @EHCI_QTD_PAYLOAD_MAX, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %70 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %72 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %75 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %74)
  store i32 1, i32* %9, align 4
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 2, %78
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %81 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %84 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %82, %85
  %87 = add nsw i32 %79, %86
  store i32 %87, i32* %8, align 4
  br label %203

88:                                               ; preds = %57
  %89 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %90 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, @ehci_device_intr_methods
  br i1 %92, label %93, label %146

93:                                               ; preds = %88
  %94 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %95 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @USB_SPEED_HIGH, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %101 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %100, i32 0, i32 0
  store i32 1024, i32* %101, align 8
  %102 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %103 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %102, i32 0, i32 1
  store i32 3, i32* %103, align 4
  br label %124

104:                                              ; preds = %93
  %105 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %106 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @USB_SPEED_FULL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* @USB_FS_BYTES_PER_HS_UFRAME, align 4
  %112 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %113 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %115 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %123

116:                                              ; preds = %104
  %117 = load i32, i32* @USB_FS_BYTES_PER_HS_UFRAME, align 4
  %118 = sdiv i32 %117, 8
  %119 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %120 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %122 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %110
  br label %124

124:                                              ; preds = %123, %99
  %125 = load i8*, i8** @EHCI_QTD_PAYLOAD_MAX, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %128 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %130 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %133 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %132)
  store i32 1, i32* %9, align 4
  %134 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %135 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 2, %136
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %139 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %142 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sdiv i32 %140, %143
  %145 = add nsw i32 %137, %144
  store i32 %145, i32* %8, align 4
  br label %202

146:                                              ; preds = %88
  %147 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %148 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, @ehci_device_isoc_fs_methods
  br i1 %150, label %151, label %166

151:                                              ; preds = %146
  %152 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %153 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %152, i32 0, i32 0
  store i32 1023, i32* %153, align 8
  %154 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %155 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  %156 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %157 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %156, i32 0, i32 2
  store i32 1023, i32* %157, align 8
  %158 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %159 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %162 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %161)
  %163 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %164 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %10, align 4
  br label %201

166:                                              ; preds = %146
  %167 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %168 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, @ehci_device_isoc_hs_methods
  br i1 %170, label %171, label %191

171:                                              ; preds = %166
  %172 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %173 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %172, i32 0, i32 0
  store i32 1024, i32* %173, align 8
  %174 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %175 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %174, i32 0, i32 1
  store i32 3, i32* %175, align 4
  %176 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %177 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %176, i32 0, i32 2
  store i32 3072, i32* %177, align 8
  %178 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %179 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  %181 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %182 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %181)
  %183 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %184 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 7
  %187 = sdiv i32 %186, 8
  %188 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %189 = call i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer* %188)
  %190 = shl i32 %187, %189
  store i32 %190, i32* %11, align 4
  br label %200

191:                                              ; preds = %166
  %192 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %193 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %192, i32 0, i32 0
  store i32 1024, i32* %193, align 8
  %194 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %195 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %197 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %196, i32 0, i32 2
  store i32 1024, i32* %197, align 8
  %198 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %199 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %198)
  br label %200

200:                                              ; preds = %191, %171
  br label %201

201:                                              ; preds = %200, %151
  br label %202

202:                                              ; preds = %201, %124
  br label %203

203:                                              ; preds = %202, %62
  br label %204

204:                                              ; preds = %203, %30
  br label %205

205:                                              ; preds = %457, %204
  %206 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %207 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %206, i32 0, i32 5
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %461

211:                                              ; preds = %205
  store i8* null, i8** %7, align 8
  %212 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %213 = load i32, i32* @EHCI_ITD_ALIGN, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %212, %struct.usb_page_cache** %4, i32 48, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %219 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %220 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %219, i32 0, i32 5
  store i8* %218, i8** %220, align 8
  br label %461

221:                                              ; preds = %211
  %222 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %223 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %267

226:                                              ; preds = %221
  store i32 0, i32* %12, align 4
  br label %227

227:                                              ; preds = %263, %226
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %266

231:                                              ; preds = %227
  %232 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %232, i64 %234
  %236 = call i32 @usbd_get_page(%struct.usb_page_cache* %235, i32 0, %struct.usb_page_search* %3)
  %237 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  store %struct.TYPE_9__* %238, %struct.TYPE_9__** %13, align 8
  %239 = load i32*, i32** %5, align 8
  %240 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @EHCI_LINK_ITD, align 4
  %243 = or i32 %241, %242
  %244 = call i8* @htohc32(i32* %239, i32 %243)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %250, i64 %252
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  store %struct.usb_page_cache* %253, %struct.usb_page_cache** %255, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %257 = bitcast %struct.TYPE_9__* %256 to i8*
  store i8* %257, i8** %7, align 8
  %258 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %258, i64 %260
  %262 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %261)
  br label %263

263:                                              ; preds = %231
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %227

266:                                              ; preds = %227
  br label %267

267:                                              ; preds = %266, %221
  %268 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %269 = load i32, i32* @EHCI_SITD_ALIGN, align 4
  %270 = load i32, i32* %10, align 4
  %271 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %268, %struct.usb_page_cache** %4, i32 48, i32 %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %275 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %276 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %275, i32 0, i32 5
  store i8* %274, i8** %276, align 8
  br label %461

277:                                              ; preds = %267
  %278 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %279 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %323

282:                                              ; preds = %277
  store i32 0, i32* %12, align 4
  br label %283

283:                                              ; preds = %319, %282
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %322

287:                                              ; preds = %283
  %288 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %288, i64 %290
  %292 = call i32 @usbd_get_page(%struct.usb_page_cache* %291, i32 0, %struct.usb_page_search* %3)
  %293 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %293, align 8
  store %struct.TYPE_9__* %294, %struct.TYPE_9__** %14, align 8
  %295 = load i32*, i32** %5, align 8
  %296 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @EHCI_LINK_SITD, align 4
  %299 = or i32 %297, %298
  %300 = call i8* @htohc32(i32* %295, i32 %299)
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 4
  store i8* %300, i8** %302, align 8
  %303 = load i8*, i8** %7, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  %306 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %306, i64 %308
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  store %struct.usb_page_cache* %309, %struct.usb_page_cache** %311, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %313 = bitcast %struct.TYPE_9__* %312 to i8*
  store i8* %313, i8** %7, align 8
  %314 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %314, i64 %316
  %318 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %317)
  br label %319

319:                                              ; preds = %287
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %12, align 4
  br label %283

322:                                              ; preds = %283
  br label %323

323:                                              ; preds = %322, %277
  %324 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %325 = load i32, i32* @EHCI_QTD_ALIGN, align 4
  %326 = load i32, i32* %8, align 4
  %327 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %324, %struct.usb_page_cache** %4, i32 48, i32 %325, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %323
  %330 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %331 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %332 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %331, i32 0, i32 5
  store i8* %330, i8** %332, align 8
  br label %461

333:                                              ; preds = %323
  %334 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %335 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %377

338:                                              ; preds = %333
  store i32 0, i32* %12, align 4
  br label %339

339:                                              ; preds = %373, %338
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %8, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %376

343:                                              ; preds = %339
  %344 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %344, i64 %346
  %348 = call i32 @usbd_get_page(%struct.usb_page_cache* %347, i32 0, %struct.usb_page_search* %3)
  %349 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %349, align 8
  store %struct.TYPE_9__* %350, %struct.TYPE_9__** %15, align 8
  %351 = load i32*, i32** %5, align 8
  %352 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i8* @htohc32(i32* %351, i32 %353)
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 3
  store i8* %354, i8** %356, align 8
  %357 = load i8*, i8** %7, align 8
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 1
  store i8* %357, i8** %359, align 8
  %360 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %361 = load i32, i32* %12, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %360, i64 %362
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  store %struct.usb_page_cache* %363, %struct.usb_page_cache** %365, align 8
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %367 = bitcast %struct.TYPE_9__* %366 to i8*
  store i8* %367, i8** %7, align 8
  %368 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %368, i64 %370
  %372 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %371)
  br label %373

373:                                              ; preds = %343
  %374 = load i32, i32* %12, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %12, align 4
  br label %339

376:                                              ; preds = %339
  br label %377

377:                                              ; preds = %376, %333
  %378 = load i8*, i8** %7, align 8
  %379 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %380 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %379, i32 0, i32 5
  %381 = load i8**, i8*** %380, align 8
  %382 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %383 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds i8*, i8** %381, i64 %385
  store i8* %378, i8** %386, align 8
  store i8* null, i8** %7, align 8
  %387 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %388 = load i32, i32* @EHCI_QH_ALIGN, align 4
  %389 = load i32, i32* %9, align 4
  %390 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %387, %struct.usb_page_cache** %4, i32 48, i32 %388, i32 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %377
  %393 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %394 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %395 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %394, i32 0, i32 5
  store i8* %393, i8** %395, align 8
  br label %461

396:                                              ; preds = %377
  %397 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %398 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %397, i32 0, i32 4
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %442

401:                                              ; preds = %396
  store i32 0, i32* %12, align 4
  br label %402

402:                                              ; preds = %438, %401
  %403 = load i32, i32* %12, align 4
  %404 = load i32, i32* %9, align 4
  %405 = icmp ne i32 %403, %404
  br i1 %405, label %406, label %441

406:                                              ; preds = %402
  %407 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %408 = load i32, i32* %12, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %407, i64 %409
  %411 = call i32 @usbd_get_page(%struct.usb_page_cache* %410, i32 0, %struct.usb_page_search* %3)
  %412 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  store %struct.TYPE_9__* %413, %struct.TYPE_9__** %16, align 8
  %414 = load i32*, i32** %5, align 8
  %415 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @EHCI_LINK_QH, align 4
  %418 = or i32 %416, %417
  %419 = call i8* @htohc32(i32* %414, i32 %418)
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 2
  store i8* %419, i8** %421, align 8
  %422 = load i8*, i8** %7, align 8
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  store i8* %422, i8** %424, align 8
  %425 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %426 = load i32, i32* %12, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %425, i64 %427
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 0
  store %struct.usb_page_cache* %428, %struct.usb_page_cache** %430, align 8
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %432 = bitcast %struct.TYPE_9__* %431 to i8*
  store i8* %432, i8** %7, align 8
  %433 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %434 = load i32, i32* %12, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %433, i64 %435
  %437 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %436)
  br label %438

438:                                              ; preds = %406
  %439 = load i32, i32* %12, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %12, align 4
  br label %402

441:                                              ; preds = %402
  br label %442

442:                                              ; preds = %441, %396
  %443 = load i8*, i8** %7, align 8
  %444 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %445 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %444, i32 0, i32 4
  %446 = load i8**, i8*** %445, align 8
  %447 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %448 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %447, i32 0, i32 3
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = getelementptr inbounds i8*, i8** %446, i64 %450
  store i8* %443, i8** %451, align 8
  %452 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %453 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %452, i32 0, i32 3
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %461, label %457

457:                                              ; preds = %442
  %458 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %459 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 1
  store i64 1, i64* %460, align 8
  br label %205

461:                                              ; preds = %210, %217, %273, %329, %392, %442
  ret void
}

declare dso_local i32* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer*) #1

declare dso_local i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params*, %struct.usb_page_cache**, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i8* @htohc32(i32*, i32) #1

declare dso_local i32 @usb_pc_cpu_flush(%struct.usb_page_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
