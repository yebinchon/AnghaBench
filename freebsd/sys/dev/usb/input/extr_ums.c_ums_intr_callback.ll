; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ums_softc = type { i32*, i32, %struct.TYPE_4__, i32, %struct.ums_info*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ums_info = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sc=%p actlen=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"truncating large packet to %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"data = %02x %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@UMS_FLAG_SBU = common dso_local global i32 0, align 4
@UMS_FLAG_W_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_X_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_Y_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_Z_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_REVZ = common dso_local global i32 0, align 4
@UMS_FLAG_T_AXIS = common dso_local global i32 0, align 4
@UMS_INFO_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"x:%d y:%d z:%d t:%d w:%d buttons:0x%08x\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@ums_put_queue_timeout = common dso_local global i32 0, align 4
@USB_FIFO_RX = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ums_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ums_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ums_softc*, align 8
  %6 = alloca %struct.ums_info*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call %struct.ums_softc* @usbd_xfer_softc(%struct.usb_xfer* %21)
  store %struct.ums_softc* %22, %struct.ums_softc** %5, align 8
  %23 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %23, i32 0, i32 4
  %25 = load %struct.ums_info*, %struct.ums_info** %24, align 8
  %26 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %25, i64 0
  store %struct.ums_info* %26, %struct.ums_info** %6, align 8
  %27 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call i32 @usbd_xfer_status(%struct.usb_xfer* %30, i32* %18, i32* null, i32* null, i32* null)
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %33 = call i32 @USB_GET_STATE(%struct.usb_xfer* %32)
  switch i32 %33, label %476 [
    i32 128, label %34
    i32 129, label %457
  ]

34:                                               ; preds = %2
  %35 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %36 = load i32, i32* %18, align 4
  %37 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.ums_softc* %35, i32 %36)
  %38 = load i32, i32* %18, align 4
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 8)
  store i32 8, i32* %18, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %18, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %458

46:                                               ; preds = %42
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %47, i32 0)
  store %struct.usb_page_cache* %48, %struct.usb_page_cache** %7, align 8
  %49 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @usbd_copy_out(%struct.usb_page_cache* %49, i32 0, i32* %50, i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  %62 = load i32, i32* %18, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  br label %69

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  %71 = load i32, i32* %18, align 4
  %72 = icmp sgt i32 %71, 2
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  br label %78

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ %76, %73 ], [ 0, %77 ]
  %80 = load i32, i32* %18, align 4
  %81 = icmp sgt i32 %80, 3
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 0, %86 ]
  %89 = load i32, i32* %18, align 4
  %90 = icmp sgt i32 %89, 4
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %94, %91 ], [ 0, %95 ]
  %98 = load i32, i32* %18, align 4
  %99 = icmp sgt i32 %98, 5
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  br label %105

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i32 [ %103, %100 ], [ 0, %104 ]
  %107 = load i32, i32* %18, align 4
  %108 = icmp sgt i32 %107, 6
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  %112 = load i32, i32* %111, align 4
  br label %114

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi i32 [ %112, %109 ], [ 0, %113 ]
  %116 = load i32, i32* %18, align 4
  %117 = icmp sgt i32 %116, 7
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  %121 = load i32, i32* %120, align 4
  br label %123

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i32 [ %121, %118 ], [ 0, %122 ]
  %125 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %70, i32 %79, i32 %88, i32 %97, i32 %106, i32 %115, i32 %124)
  %126 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %127 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %18, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %8, align 8
  br label %158

137:                                              ; preds = %123
  store i32 0, i32* %17, align 4
  %138 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %139 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %138, i32 0, i32 4
  %140 = load %struct.ums_info*, %struct.ums_info** %139, align 8
  %141 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %140, i64 0
  %142 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @UMS_FLAG_SBU, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 20
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 21
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %147
  br label %458

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %157, %130
  br label %159

159:                                              ; preds = %329, %158
  %160 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %161 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @UMS_FLAG_W_AXIS, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %159
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %169 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %176 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %175, i32 0, i32 13
  %177 = call i64 @hid_get_data(i32* %173, i32 %174, i32* %176)
  %178 = load i64, i64* %11, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %11, align 8
  br label %180

180:                                              ; preds = %172, %166, %159
  %181 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %182 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @UMS_FLAG_X_AXIS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %180
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %190 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %188, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %187
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %197 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %196, i32 0, i32 12
  %198 = call i64 @hid_get_data(i32* %194, i32 %195, i32* %197)
  %199 = load i64, i64* %12, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %12, align 8
  br label %201

201:                                              ; preds = %193, %187, %180
  %202 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %203 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @UMS_FLAG_Y_AXIS, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %201
  %209 = load i32, i32* %17, align 4
  %210 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %211 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %218 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %217, i32 0, i32 11
  %219 = call i64 @hid_get_data(i32* %215, i32 %216, i32* %218)
  %220 = load i64, i64* %13, align 8
  %221 = sub i64 %220, %219
  store i64 %221, i64* %13, align 8
  br label %222

222:                                              ; preds = %214, %208, %201
  %223 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %224 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @UMS_FLAG_Z_AXIS, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %254

229:                                              ; preds = %222
  %230 = load i32, i32* %17, align 4
  %231 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %232 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %229
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %239 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %238, i32 0, i32 10
  %240 = call i64 @hid_get_data(i32* %236, i32 %237, i32* %239)
  store i64 %240, i64* %19, align 8
  %241 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %242 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @UMS_FLAG_REVZ, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %235
  %248 = load i64, i64* %19, align 8
  %249 = sub i64 0, %248
  store i64 %249, i64* %19, align 8
  br label %250

250:                                              ; preds = %247, %235
  %251 = load i64, i64* %19, align 8
  %252 = load i64, i64* %14, align 8
  %253 = sub i64 %252, %251
  store i64 %253, i64* %14, align 8
  br label %254

254:                                              ; preds = %250, %229, %222
  %255 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %256 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @UMS_FLAG_T_AXIS, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %254
  %262 = load i32, i32* %17, align 4
  %263 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %264 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %262, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %261
  %268 = load i32*, i32** %8, align 8
  %269 = load i32, i32* %18, align 4
  %270 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %271 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %270, i32 0, i32 9
  %272 = call i64 @hid_get_data(i32* %268, i32 %269, i32* %271)
  %273 = load i64, i64* %15, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %15, align 8
  %275 = load i64, i64* %10, align 8
  %276 = or i64 %275, 96
  store i64 %276, i64* %10, align 8
  br label %277

277:                                              ; preds = %267, %261, %254
  store i32 0, i32* %16, align 4
  br label %278

278:                                              ; preds = %317, %277
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %281 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %320

284:                                              ; preds = %278
  %285 = load i32, i32* %16, align 4
  %286 = call i64 @UMS_BUT(i32 %285)
  %287 = shl i64 1, %286
  store i64 %287, i64* %20, align 8
  %288 = load i32, i32* %17, align 4
  %289 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %290 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %289, i32 0, i32 7
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %288, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %284
  br label %317

298:                                              ; preds = %284
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %18, align 4
  %301 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %302 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %301, i32 0, i32 8
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %16, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = call i64 @hid_get_data(i32* %299, i32 %300, i32* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %298
  %310 = load i64, i64* %20, align 8
  %311 = load i64, i64* %9, align 8
  %312 = or i64 %311, %310
  store i64 %312, i64* %9, align 8
  br label %313

313:                                              ; preds = %309, %298
  %314 = load i64, i64* %20, align 8
  %315 = load i64, i64* %10, align 8
  %316 = or i64 %315, %314
  store i64 %316, i64* %10, align 8
  br label %317

317:                                              ; preds = %313, %297
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %16, align 4
  br label %278

320:                                              ; preds = %278
  %321 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %322 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %321, i32 1
  store %struct.ums_info* %322, %struct.ums_info** %6, align 8
  %323 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %324 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %323, i32 0, i32 4
  %325 = load %struct.ums_info*, %struct.ums_info** %324, align 8
  %326 = load i64, i64* @UMS_INFO_MAX, align 8
  %327 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %325, i64 %326
  %328 = icmp ne %struct.ums_info* %322, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %320
  br label %159

330:                                              ; preds = %320
  %331 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %332 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %331, i32 0, i32 5
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* %10, align 8
  %336 = xor i64 %335, -1
  %337 = and i64 %334, %336
  %338 = load i64, i64* %9, align 8
  %339 = or i64 %338, %337
  store i64 %339, i64* %9, align 8
  %340 = load i64, i64* %12, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %361, label %342

342:                                              ; preds = %330
  %343 = load i64, i64* %13, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %361, label %345

345:                                              ; preds = %342
  %346 = load i64, i64* %14, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %361, label %348

348:                                              ; preds = %345
  %349 = load i64, i64* %15, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %361, label %351

351:                                              ; preds = %348
  %352 = load i64, i64* %11, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %351
  %355 = load i64, i64* %9, align 8
  %356 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %357 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %355, %359
  br i1 %360, label %361, label %456

361:                                              ; preds = %354, %351, %348, %345, %342, %330
  %362 = load i64, i64* %12, align 8
  %363 = load i64, i64* %13, align 8
  %364 = load i64, i64* %14, align 8
  %365 = load i64, i64* %15, align 8
  %366 = load i64, i64* %11, align 8
  %367 = load i64, i64* %9, align 8
  %368 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %362, i64 %363, i64 %364, i64 %365, i64 %366, i64 %367)
  %369 = load i64, i64* %15, align 8
  %370 = icmp ugt i64 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %361
  %372 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %373 = load i64, i64* %9, align 8
  %374 = call i32 @ums_put_queue(%struct.ums_softc* %372, i64 0, i64 0, i64 0, i64 0, i64 %373)
  %375 = load i64, i64* %9, align 8
  %376 = or i64 %375, 64
  store i64 %376, i64* %9, align 8
  br label %387

377:                                              ; preds = %361
  %378 = load i64, i64* %15, align 8
  %379 = icmp ult i64 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %377
  %381 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %382 = load i64, i64* %9, align 8
  %383 = call i32 @ums_put_queue(%struct.ums_softc* %381, i64 0, i64 0, i64 0, i64 0, i64 %382)
  %384 = load i64, i64* %9, align 8
  %385 = or i64 %384, 32
  store i64 %385, i64* %9, align 8
  br label %386

386:                                              ; preds = %380, %377
  br label %387

387:                                              ; preds = %386, %371
  %388 = load i64, i64* %9, align 8
  %389 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %390 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 0
  store i64 %388, i64* %391, align 8
  %392 = load i64, i64* %12, align 8
  %393 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %394 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = add i64 %396, %392
  store i64 %397, i64* %395, align 8
  %398 = load i64, i64* %13, align 8
  %399 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %400 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, %398
  store i64 %403, i64* %401, align 8
  %404 = load i64, i64* %14, align 8
  %405 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %406 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = add i64 %408, %404
  store i64 %409, i64* %407, align 8
  %410 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %411 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %410, i32 0, i32 4
  %412 = load %struct.ums_info*, %struct.ums_info** %411, align 8
  %413 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %412, i64 0
  %414 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @UMS_FLAG_SBU, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %444

419:                                              ; preds = %387
  %420 = load i64, i64* %12, align 8
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %444

422:                                              ; preds = %419
  %423 = load i64, i64* %13, align 8
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %444

425:                                              ; preds = %422
  %426 = load i64, i64* %14, align 8
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %444

428:                                              ; preds = %425
  %429 = load i64, i64* %15, align 8
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %444

431:                                              ; preds = %428
  %432 = load i64, i64* %11, align 8
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %434, label %444

434:                                              ; preds = %431
  %435 = load i64, i64* %9, align 8
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %444

437:                                              ; preds = %434
  %438 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %439 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %438, i32 0, i32 3
  %440 = load i32, i32* @hz, align 4
  %441 = sdiv i32 %440, 20
  %442 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %443 = call i32 @usb_callout_reset(i32* %439, i32 %441, i32* @ums_put_queue_timeout, %struct.ums_softc* %442)
  br label %455

444:                                              ; preds = %434, %431, %428, %425, %422, %419, %387
  %445 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %446 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %445, i32 0, i32 3
  %447 = call i32 @usb_callout_stop(i32* %446)
  %448 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %449 = load i64, i64* %12, align 8
  %450 = load i64, i64* %13, align 8
  %451 = load i64, i64* %14, align 8
  %452 = load i64, i64* %15, align 8
  %453 = load i64, i64* %9, align 8
  %454 = call i32 @ums_put_queue(%struct.ums_softc* %448, i64 %449, i64 %450, i64 %451, i64 %452, i64 %453)
  br label %455

455:                                              ; preds = %444, %437
  br label %456

456:                                              ; preds = %455, %354
  br label %457

457:                                              ; preds = %2, %456
  br label %458

458:                                              ; preds = %480, %457, %155, %45
  %459 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %460 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 0
  %462 = load i32*, i32** %461, align 8
  %463 = load i64, i64* @USB_FIFO_RX, align 8
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @usb_fifo_put_bytes_max(i32 %465)
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %458
  br label %484

469:                                              ; preds = %458
  %470 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %471 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %472 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %471)
  %473 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %470, i32 0, i32 %472)
  %474 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %475 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %474)
  br label %484

476:                                              ; preds = %2
  %477 = load i32, i32* %4, align 4
  %478 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %479 = icmp ne i32 %477, %478
  br i1 %479, label %480, label %483

480:                                              ; preds = %476
  %481 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %482 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %481)
  br label %458

483:                                              ; preds = %476
  br label %484

484:                                              ; preds = %483, %469, %468
  ret void
}

declare dso_local %struct.ums_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i64 @hid_get_data(i32*, i32, i32*) #1

declare dso_local i64 @UMS_BUT(i32) #1

declare dso_local i32 @ums_put_queue(%struct.ums_softc*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32*, %struct.ums_softc*) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @usb_fifo_put_bytes_max(i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
