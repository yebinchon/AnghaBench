; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32, i64, i8*, i32*, %struct.usb_xfer*, %struct.TYPE_5__* }
%struct.usb_xfer = type { i32, i32, i32, %struct.TYPE_6__, i8**, i8**, %struct.usb_page_cache* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.usb_page_cache = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_page_search = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_page_cache*, i8*, i8*, i8* }

@uhci_device_ctrl_methods = common dso_local global i32 0, align 4
@uhci_device_bulk_methods = common dso_local global i32 0, align 4
@uhci_device_intr_methods = common dso_local global i32 0, align 4
@uhci_device_isoc_methods = common dso_local global i32 0, align 4
@USB_PAGE_SIZE = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i8* null, align 8
@UHCI_TD_ALIGN = common dso_local global i32 0, align 4
@UHCI_PTR_TD = common dso_local global i32 0, align 4
@UHCI_PTR_VF = common dso_local global i32 0, align 4
@UHCI_QH_ALIGN = common dso_local global i32 0, align 4
@UHCI_PTR_QH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @uhci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_xfer_setup(%struct.usb_setup_params* %0) #0 {
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
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %15 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %16 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %15, i32 0, i32 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @UHCI_BUS2SC(i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %22 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %21, i32 0, i32 7
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %22, align 8
  store %struct.usb_xfer* %23, %struct.usb_xfer** %6, align 8
  %24 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %25 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %24, i32 0, i32 0
  store i32 1280, i32* %25, align 8
  %26 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %27 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %29 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %28, i32 0, i32 2
  store i32 1280, i32* %29, align 8
  %30 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %31 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, @uhci_device_ctrl_methods
  br i1 %33, label %34, label %56

34:                                               ; preds = %1
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %36 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %42 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %41)
  store i32 1, i32* %9, align 4
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 %46, 1
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %49 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %52 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %50, %53
  %55 = add nsw i32 %47, %54
  store i32 %55, i32* %8, align 4
  br label %131

56:                                               ; preds = %1
  %57 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %58 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, @uhci_device_bulk_methods
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %69 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %68)
  store i32 1, i32* %9, align 4
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %71 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 2, %72
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %75 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %78 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %76, %79
  %81 = add nsw i32 %73, %80
  store i32 %81, i32* %8, align 4
  br label %130

82:                                               ; preds = %56
  %83 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %84 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, @uhci_device_intr_methods
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %89 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %92 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %95 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %94)
  store i32 1, i32* %9, align 4
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %97 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 2, %98
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %101 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %102, %105
  %107 = add nsw i32 %99, %106
  store i32 %107, i32* %8, align 4
  br label %129

108:                                              ; preds = %82
  %109 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %110 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, @uhci_device_isoc_methods
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %115 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %118 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %121 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %120)
  store i32 0, i32* %9, align 4
  %122 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %123 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %8, align 4
  br label %128

125:                                              ; preds = %108
  %126 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %127 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %126)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %113
  br label %129

129:                                              ; preds = %128, %87
  br label %130

130:                                              ; preds = %129, %61
  br label %131

131:                                              ; preds = %130, %34
  %132 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %133 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %132, i32 0, i32 5
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %361

137:                                              ; preds = %131
  %138 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %139 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @USB_PAGE_SIZE, align 4
  %142 = sdiv i32 %140, %141
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %145 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %150, %137
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = ashr i32 %151, 1
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %147

155:                                              ; preds = %147
  %156 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %157 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %160 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = and i32 %158, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %165, %155
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 3, i32* %11, align 4
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %11, align 4
  %174 = shl i32 1, %173
  store i32 %174, i32* %12, align 4
  %175 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %176 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %177 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %175, %struct.usb_page_cache** %4, i32 %178, i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %172
  %184 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %185 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %186 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  br label %361

187:                                              ; preds = %172
  %188 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %189 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %190 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %189, i32 0, i32 6
  store %struct.usb_page_cache* %188, %struct.usb_page_cache** %190, align 8
  br label %191

191:                                              ; preds = %357, %187
  %192 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %193 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %192, i32 0, i32 5
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %361

197:                                              ; preds = %191
  store i8* null, i8** %7, align 8
  %198 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %199 = load i32, i32* @UHCI_TD_ALIGN, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %198, %struct.usb_page_cache** %4, i32 32, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %205 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %206 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %205, i32 0, i32 5
  store i8* %204, i8** %206, align 8
  br label %361

207:                                              ; preds = %197
  %208 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %209 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %278

212:                                              ; preds = %207
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %274, %212
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %277

217:                                              ; preds = %213
  %218 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %218, i64 %220
  %222 = call i32 @usbd_get_page(%struct.usb_page_cache* %221, i32 0, %struct.usb_page_search* %3)
  %223 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  store %struct.TYPE_7__* %224, %struct.TYPE_7__** %13, align 8
  %225 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %226 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, @uhci_device_bulk_methods
  br i1 %228, label %239, label %229

229:                                              ; preds = %217
  %230 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %231 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %230, i32 0, i32 6
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, @uhci_device_ctrl_methods
  br i1 %233, label %239, label %234

234:                                              ; preds = %229
  %235 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %236 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %235, i32 0, i32 6
  %237 = load i32*, i32** %236, align 8
  %238 = icmp eq i32* %237, @uhci_device_intr_methods
  br i1 %238, label %239, label %249

239:                                              ; preds = %234, %229, %217
  %240 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @UHCI_PTR_TD, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @UHCI_PTR_VF, align 4
  %245 = or i32 %243, %244
  %246 = call i8* @htole32(i32 %245)
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 3
  store i8* %246, i8** %248, align 8
  br label %257

249:                                              ; preds = %234
  %250 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @UHCI_PTR_TD, align 4
  %253 = or i32 %251, %252
  %254 = call i8* @htole32(i32 %253)
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 3
  store i8* %254, i8** %256, align 8
  br label %257

257:                                              ; preds = %249, %239
  %258 = load i8*, i8** %7, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  %261 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %261, i64 %263
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  store %struct.usb_page_cache* %264, %struct.usb_page_cache** %266, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %268 = bitcast %struct.TYPE_7__* %267 to i8*
  store i8* %268, i8** %7, align 8
  %269 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %269, i64 %271
  %273 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %272)
  br label %274

274:                                              ; preds = %257
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %213

277:                                              ; preds = %213
  br label %278

278:                                              ; preds = %277, %207
  %279 = load i8*, i8** %7, align 8
  %280 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %281 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %280, i32 0, i32 5
  %282 = load i8**, i8*** %281, align 8
  %283 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %284 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i8*, i8** %282, i64 %286
  store i8* %279, i8** %287, align 8
  store i8* null, i8** %7, align 8
  %288 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %289 = load i32, i32* @UHCI_QH_ALIGN, align 4
  %290 = load i32, i32* %9, align 4
  %291 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %288, %struct.usb_page_cache** %4, i32 32, i32 %289, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %278
  %294 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %295 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %296 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %295, i32 0, i32 5
  store i8* %294, i8** %296, align 8
  br label %361

297:                                              ; preds = %278
  %298 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %299 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %298, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %342

302:                                              ; preds = %297
  store i32 0, i32* %11, align 4
  br label %303

303:                                              ; preds = %338, %302
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %9, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %341

307:                                              ; preds = %303
  %308 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %308, i64 %310
  %312 = call i32 @usbd_get_page(%struct.usb_page_cache* %311, i32 0, %struct.usb_page_search* %3)
  %313 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  store %struct.TYPE_7__* %314, %struct.TYPE_7__** %14, align 8
  %315 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @UHCI_PTR_QH, align 4
  %318 = or i32 %316, %317
  %319 = call i8* @htole32(i32 %318)
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  %322 = load i8*, i8** %7, align 8
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %325, i64 %327
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  store %struct.usb_page_cache* %328, %struct.usb_page_cache** %330, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %332 = bitcast %struct.TYPE_7__* %331 to i8*
  store i8* %332, i8** %7, align 8
  %333 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %333, i64 %335
  %337 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %336)
  br label %338

338:                                              ; preds = %307
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %11, align 4
  br label %303

341:                                              ; preds = %303
  br label %342

342:                                              ; preds = %341, %297
  %343 = load i8*, i8** %7, align 8
  %344 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %345 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %344, i32 0, i32 4
  %346 = load i8**, i8*** %345, align 8
  %347 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %348 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds i8*, i8** %346, i64 %350
  store i8* %343, i8** %351, align 8
  %352 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %353 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %342
  %358 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  %359 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 2
  store i64 1, i64* %360, align 8
  br label %191

361:                                              ; preds = %136, %183, %196, %203, %293, %342
  ret void
}

declare dso_local i32* @UHCI_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params*, %struct.usb_page_cache**, i32, i32, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(%struct.usb_page_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
