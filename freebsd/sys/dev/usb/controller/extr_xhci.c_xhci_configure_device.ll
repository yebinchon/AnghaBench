; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, i32, i32, i32, %struct.usb_device*, %struct.TYPE_5__, %struct.usb_device*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xhci_softc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i64, %struct.usb_page_cache }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { %struct.xhci_input_dev_ctx* }
%struct.xhci_input_dev_ctx = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Route=0x%08x\0A\00", align 1
@UDPROTO_HSHUBMTT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Device inherits MTT\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HUB supports MTT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @xhci_configure_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_configure_device(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.usb_page_cache*, align 8
  %6 = alloca %struct.xhci_input_dev_ctx*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %16)
  store %struct.xhci_softc* %17, %struct.xhci_softc** %3, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  store %struct.usb_page_cache* %29, %struct.usb_page_cache** %5, align 8
  %30 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %31 = call i32 @usbd_get_page(%struct.usb_page_cache* %30, i32 0, %struct.usb_page_search* %4)
  %32 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %33 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %32, align 8
  store %struct.xhci_input_dev_ctx* %33, %struct.xhci_input_dev_ctx** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %34 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  store %struct.usb_device* %34, %struct.usb_device** %7, align 8
  br label %35

35:                                               ; preds = %73, %1
  %36 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %37 = icmp ne %struct.usb_device* %36, null
  br i1 %37, label %38, label %77

38:                                               ; preds = %35
  %39 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 7
  %41 = load %struct.usb_device*, %struct.usb_device** %40, align 8
  %42 = icmp eq %struct.usb_device* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %77

44:                                               ; preds = %38
  %45 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 7
  %47 = load %struct.usb_device*, %struct.usb_device** %46, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* %13, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %77

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 15
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 15, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i64, i64* %13, align 8
  %62 = icmp ult i64 %61, 6
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %13, align 8
  %66 = sub i64 %65, 1
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %64, %68
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %63, %60
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %75 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %74, i32 0, i32 7
  %76 = load %struct.usb_device*, %struct.usb_device** %75, align 8
  store %struct.usb_device* %76, %struct.usb_device** %7, align 8
  br label %35

77:                                               ; preds = %55, %43, %35
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @XHCI_SCTX_0_ROUTE_SET(i32 %80)
  %82 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %83 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @XHCI_SCTX_0_CTX_NUM_SET(i64 %90)
  %92 = or i32 %81, %91
  store i32 %92, i32* %8, align 4
  %93 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %94 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %168 [
    i32 131, label %96
    i32 132, label %119
    i32 133, label %145
  ]

96:                                               ; preds = %77
  %97 = call i32 @XHCI_SCTX_0_SPEED_SET(i32 2)
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 5
  %102 = load %struct.usb_device*, %struct.usb_device** %101, align 8
  %103 = icmp ne %struct.usb_device* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %96
  %105 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %106 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %105, i32 0, i32 5
  %107 = load %struct.usb_device*, %struct.usb_device** %106, align 8
  %108 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @UDPROTO_HSHUBMTT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %115 = call i32 @XHCI_SCTX_0_MTT_SET(i32 1)
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %113, %104, %96
  br label %172

119:                                              ; preds = %77
  %120 = call i32 @XHCI_SCTX_0_SPEED_SET(i32 3)
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %124 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %119
  %133 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %134 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @UDPROTO_HSHUBMTT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %141 = call i32 @XHCI_SCTX_0_MTT_SET(i32 1)
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %139, %132, %119
  br label %172

145:                                              ; preds = %77
  %146 = call i32 @XHCI_SCTX_0_SPEED_SET(i32 1)
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %150 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %149, i32 0, i32 5
  %151 = load %struct.usb_device*, %struct.usb_device** %150, align 8
  %152 = icmp ne %struct.usb_device* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %145
  %154 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %155 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %154, i32 0, i32 5
  %156 = load %struct.usb_device*, %struct.usb_device** %155, align 8
  %157 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @UDPROTO_HSHUBMTT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %164 = call i32 @XHCI_SCTX_0_MTT_SET(i32 1)
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %162, %153, %145
  br label %172

168:                                              ; preds = %77
  %169 = call i32 @XHCI_SCTX_0_SPEED_SET(i32 4)
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %168, %167, %144, %118
  %173 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %174 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %172
  %183 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %184 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 130
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %189 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 132
  br label %192

192:                                              ; preds = %187, %182
  %193 = phi i1 [ true, %182 ], [ %191, %187 ]
  br label %194

194:                                              ; preds = %192, %172
  %195 = phi i1 [ false, %172 ], [ %193, %192 ]
  %196 = zext i1 %195 to i32
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %11, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = call i32 @XHCI_SCTX_0_HUB_SET(i32 1)
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %200, %194
  %205 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %206 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %6, align 8
  %207 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 3
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %205, i32* %208, i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @XHCI_SCTX_1_RH_PORT_SET(i32 %211)
  store i32 %212, i32* %8, align 4
  %213 = load i64, i64* %11, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %204
  %216 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %217 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i64, i64* %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @XHCI_SCTX_1_NUM_PORTS_SET(i64 %223)
  %225 = load i32, i32* %8, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %215, %204
  %228 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %229 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  switch i32 %230, label %249 [
    i32 130, label %231
  ]

231:                                              ; preds = %227
  %232 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %233 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = load i64, i64* %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  switch i32 %239, label %247 [
    i32 129, label %240
    i32 128, label %240
  ]

240:                                              ; preds = %231, %231
  %241 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %242 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @XHCI_SCTX_1_MAX_EL_SET(i32 %243)
  %245 = load i32, i32* %8, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %8, align 4
  br label %248

247:                                              ; preds = %231
  br label %248

248:                                              ; preds = %247, %240
  br label %250

249:                                              ; preds = %227
  br label %250

250:                                              ; preds = %249, %248
  %251 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %252 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %6, align 8
  %253 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %251, i32* %254, i32 %255)
  %257 = call i32 @XHCI_SCTX_2_IRQ_TARGET_SET(i32 0)
  store i32 %257, i32* %8, align 4
  %258 = load i64, i64* %11, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %250
  %261 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %262 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = load i64, i64* %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @XHCI_SCTX_2_TT_THINK_TIME_SET(i32 %268)
  %270 = load i32, i32* %8, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %260, %250
  %273 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %274 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %273, i32 0, i32 5
  %275 = load %struct.usb_device*, %struct.usb_device** %274, align 8
  store %struct.usb_device* %275, %struct.usb_device** %7, align 8
  %276 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %277 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  switch i32 %278, label %296 [
    i32 133, label %279
    i32 131, label %279
  ]

279:                                              ; preds = %272, %272
  %280 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %281 = icmp ne %struct.usb_device* %280, null
  br i1 %281, label %282, label %295

282:                                              ; preds = %279
  %283 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %284 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @XHCI_SCTX_2_TT_HUB_SID_SET(i64 %285)
  %287 = load i32, i32* %8, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %8, align 4
  %289 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %290 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @XHCI_SCTX_2_TT_PORT_NUM_SET(i32 %291)
  %293 = load i32, i32* %8, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %282, %279
  br label %297

296:                                              ; preds = %272
  br label %297

297:                                              ; preds = %296, %295
  %298 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %299 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %6, align 8
  %300 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %298, i32* %301, i32 %302)
  %304 = call i32 @XHCI_SCTX_3_DEV_ADDR_SET(i32 0)
  %305 = call i32 @XHCI_SCTX_3_SLOT_STATE_SET(i32 0)
  %306 = or i32 %304, %305
  store i32 %306, i32* %8, align 4
  %307 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %308 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %6, align 8
  %309 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %307, i32* %310, i32 %311)
  %313 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %314 = call i32 @usb_pc_cpu_flush(%struct.usb_page_cache* %313)
  ret i32 0
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @XHCI_SCTX_0_ROUTE_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_0_CTX_NUM_SET(i64) #1

declare dso_local i32 @XHCI_SCTX_0_SPEED_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_0_MTT_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_0_HUB_SET(i32) #1

declare dso_local i32 @xhci_ctx_set_le32(%struct.xhci_softc*, i32*, i32) #1

declare dso_local i32 @XHCI_SCTX_1_RH_PORT_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_1_NUM_PORTS_SET(i64) #1

declare dso_local i32 @XHCI_SCTX_1_MAX_EL_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_2_IRQ_TARGET_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_2_TT_THINK_TIME_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_2_TT_HUB_SID_SET(i64) #1

declare dso_local i32 @XHCI_SCTX_2_TT_PORT_NUM_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_3_DEV_ADDR_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_3_SLOT_STATE_SET(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(%struct.usb_page_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
