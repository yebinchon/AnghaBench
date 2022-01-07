; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i64, i8*, i32*, %struct.usb_xfer* }
%struct.usb_xfer = type { i32, i32, i32, %struct.TYPE_5__, i8**, i8** }
%struct.TYPE_5__ = type { i32, i64 }
%struct.usb_page_search = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_page_cache*, i8*, i8*, i8*, i8* }
%struct.usb_page_cache = type { i32 }

@OHCI_PAGE_SIZE = common dso_local global i32 0, align 4
@ohci_device_ctrl_methods = common dso_local global i32 0, align 4
@ohci_device_bulk_methods = common dso_local global i32 0, align 4
@ohci_device_intr_methods = common dso_local global i32 0, align 4
@ohci_device_isoc_methods = common dso_local global i32 0, align 4
@OHCI_ITD_NOFFSET = common dso_local global i32 0, align 4
@OHCI_TD_ALIGN = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i8* null, align 8
@OHCI_ITD_ALIGN = common dso_local global i32 0, align 4
@OHCI_ED_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @ohci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_page_search, align 8
  %4 = alloca %struct.usb_page_cache*, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %14 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %15 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %14, i32 0, i32 6
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %15, align 8
  store %struct.usb_xfer* %16, %struct.usb_xfer** %5, align 8
  %17 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %18 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %17, i32 0, i32 0
  store i32 1280, i32* %18, align 8
  %19 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %20 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @OHCI_PAGE_SIZE, align 4
  %22 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %23 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %25 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @ohci_device_ctrl_methods
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %33 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %32)
  store i32 0, i32* %8, align 4
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %37, 1
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %43 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %41, %44
  %46 = add nsw i32 %38, %45
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %122

47:                                               ; preds = %1
  %48 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %49 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, @ohci_device_bulk_methods
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %54 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %57 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %56)
  store i32 0, i32* %8, align 4
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 2, %60
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %64, %67
  %69 = add nsw i32 %61, %68
  store i32 %69, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %121

70:                                               ; preds = %47
  %71 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %72 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, @ohci_device_intr_methods
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %80 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %79)
  store i32 0, i32* %8, align 4
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %82 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 2, %83
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %86 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %89 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %87, %90
  %92 = add nsw i32 %84, %91
  store i32 %92, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %120

93:                                               ; preds = %70
  %94 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %95 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, @ohci_device_isoc_methods
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %100 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %103 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %102)
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %105 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @OHCI_PAGE_SIZE, align 4
  %108 = sdiv i32 %106, %107
  %109 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %110 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @OHCI_ITD_NOFFSET, align 4
  %113 = call i32 @howmany(i32 %111, i32 %112)
  %114 = add nsw i32 %108, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %119

116:                                              ; preds = %93
  %117 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %118 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %117)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %98
  br label %120

120:                                              ; preds = %119, %75
  br label %121

121:                                              ; preds = %120, %52
  br label %122

122:                                              ; preds = %121, %28
  br label %123

123:                                              ; preds = %312, %122
  %124 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %125 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %316

129:                                              ; preds = %123
  store i8* null, i8** %6, align 8
  %130 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %131 = load i32, i32* @OHCI_TD_ALIGN, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %130, %struct.usb_page_cache** %4, i32 40, i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %137 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %138 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  br label %316

139:                                              ; preds = %129
  %140 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %141 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %182

144:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %178, %144
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %181

149:                                              ; preds = %145
  %150 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %150, i64 %152
  %154 = call i32 @usbd_get_page(%struct.usb_page_cache* %153, i32 0, %struct.usb_page_search* %3)
  %155 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  store %struct.TYPE_6__* %156, %struct.TYPE_6__** %11, align 8
  %157 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @htole32(i32 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %165, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store %struct.usb_page_cache* %168, %struct.usb_page_cache** %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %172 = bitcast %struct.TYPE_6__* %171 to i8*
  store i8* %172, i8** %6, align 8
  %173 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %173, i64 %175
  %177 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %176)
  br label %178

178:                                              ; preds = %149
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %145

181:                                              ; preds = %145
  br label %182

182:                                              ; preds = %181, %139
  %183 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %184 = load i32, i32* @OHCI_ITD_ALIGN, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %183, %struct.usb_page_cache** %4, i32 40, i32 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %190 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %191 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %190, i32 0, i32 4
  store i8* %189, i8** %191, align 8
  br label %316

192:                                              ; preds = %182
  %193 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %194 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %235

197:                                              ; preds = %192
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %231, %197
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %234

202:                                              ; preds = %198
  %203 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %203, i64 %205
  %207 = call i32 @usbd_get_page(%struct.usb_page_cache* %206, i32 0, %struct.usb_page_search* %3)
  %208 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  store %struct.TYPE_6__* %209, %struct.TYPE_6__** %12, align 8
  %210 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @htole32(i32 %211)
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  %218 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %218, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store %struct.usb_page_cache* %221, %struct.usb_page_cache** %223, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %225 = bitcast %struct.TYPE_6__* %224 to i8*
  store i8* %225, i8** %6, align 8
  %226 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %226, i64 %228
  %230 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %229)
  br label %231

231:                                              ; preds = %202
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  br label %198

234:                                              ; preds = %198
  br label %235

235:                                              ; preds = %234, %192
  %236 = load i8*, i8** %6, align 8
  %237 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %238 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %237, i32 0, i32 5
  %239 = load i8**, i8*** %238, align 8
  %240 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %241 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds i8*, i8** %239, i64 %243
  store i8* %236, i8** %244, align 8
  store i8* null, i8** %6, align 8
  %245 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %246 = load i32, i32* @OHCI_ED_ALIGN, align 4
  %247 = load i32, i32* %9, align 4
  %248 = call i64 @usbd_transfer_setup_sub_malloc(%struct.usb_setup_params* %245, %struct.usb_page_cache** %4, i32 40, i32 %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %235
  %251 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %252 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %253 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %252, i32 0, i32 4
  store i8* %251, i8** %253, align 8
  br label %316

254:                                              ; preds = %235
  %255 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %256 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %297

259:                                              ; preds = %254
  store i32 0, i32* %10, align 4
  br label %260

260:                                              ; preds = %293, %259
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %296

264:                                              ; preds = %260
  %265 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %265, i64 %267
  %269 = call i32 @usbd_get_page(%struct.usb_page_cache* %268, i32 0, %struct.usb_page_search* %3)
  %270 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  store %struct.TYPE_6__* %271, %struct.TYPE_6__** %13, align 8
  %272 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i8* @htole32(i32 %273)
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 2
  store i8* %274, i8** %276, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  store i8* %277, i8** %279, align 8
  %280 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %280, i64 %282
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  store %struct.usb_page_cache* %283, %struct.usb_page_cache** %285, align 8
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %287 = bitcast %struct.TYPE_6__* %286 to i8*
  store i8* %287, i8** %6, align 8
  %288 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %289 = load i32, i32* %10, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %288, i64 %290
  %292 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %291)
  br label %293

293:                                              ; preds = %264
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %260

296:                                              ; preds = %260
  br label %297

297:                                              ; preds = %296, %254
  %298 = load i8*, i8** %6, align 8
  %299 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %300 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %299, i32 0, i32 4
  %301 = load i8**, i8*** %300, align 8
  %302 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %303 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds i8*, i8** %301, i64 %305
  store i8* %298, i8** %306, align 8
  %307 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %308 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %297
  %313 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %314 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 1
  store i64 1, i64* %315, align 8
  br label %123

316:                                              ; preds = %128, %135, %188, %250, %297
  ret void
}

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @howmany(i32, i32) #1

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
