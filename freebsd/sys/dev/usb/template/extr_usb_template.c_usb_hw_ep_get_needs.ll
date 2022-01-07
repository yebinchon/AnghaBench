; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_hw_ep_get_needs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_hw_ep_get_needs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hw_ep_scratch = type { i32*, i32*, i32, %struct.TYPE_2__*, %struct.usb_hw_ep_scratch_sub*, i32, %struct.usb_hw_ep_scratch_sub* }
%struct.TYPE_2__ = type { i32 (i32, %struct.usb_hw_ep_profile**, i32)* }
%struct.usb_hw_ep_profile = type { i32, i32 }
%struct.usb_hw_ep_scratch_sub = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_descriptor = type { i64, i32 }
%struct.usb_interface_descriptor = type { i64 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }

@USB_EP_MAX = common dso_local global i32 0, align 4
@UDESC_INTERFACE = common dso_local global i64 0, align 8
@UDESC_ENDPOINT = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Endpoint profile %u does not exist\0A\00", align 1
@UE_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Endpoint profile %u has too small buffer\0A\00", align 1
@UE_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hw_ep_scratch*, i32, i32)* @usb_hw_ep_get_needs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hw_ep_scratch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hw_ep_profile*, align 8
  %9 = alloca %struct.usb_hw_ep_scratch_sub*, align 8
  %10 = alloca %struct.usb_hw_ep_scratch_sub*, align 8
  %11 = alloca %struct.usb_hw_ep_scratch_sub*, align 8
  %12 = alloca %struct.usb_hw_ep_scratch_sub*, align 8
  %13 = alloca %struct.usb_descriptor*, align 8
  %14 = alloca %struct.usb_interface_descriptor*, align 8
  %15 = alloca %struct.usb_endpoint_descriptor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.usb_hw_ep_scratch* %0, %struct.usb_hw_ep_scratch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %21 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %20, i32 0, i32 4
  %22 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %21, align 8
  store %struct.usb_hw_ep_scratch_sub* %22, %struct.usb_hw_ep_scratch_sub** %9, align 8
  %23 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %24 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %23, i32 0, i32 4
  %25 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %24, align 8
  store %struct.usb_hw_ep_scratch_sub* %25, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %26 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %27 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %26, i32 0, i32 6
  %28 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %27, align 8
  %29 = load i32, i32* @USB_EP_MAX, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %28, i64 %30
  store %struct.usb_hw_ep_scratch_sub* %31, %struct.usb_hw_ep_scratch_sub** %12, align 8
  %32 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %33 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %32, i32 0, i32 4
  %34 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %33, align 8
  store %struct.usb_hw_ep_scratch_sub* %34, %struct.usb_hw_ep_scratch_sub** %11, align 8
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %13, align 8
  %35 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %36 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usbd_get_speed(i32 %37)
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %332, %3
  br label %40

40:                                               ; preds = %88, %39
  %41 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %42 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %45 = call %struct.usb_descriptor* @usb_desc_foreach(i32 %43, %struct.usb_descriptor* %44)
  store %struct.usb_descriptor* %45, %struct.usb_descriptor** %13, align 8
  %46 = icmp ne %struct.usb_descriptor* %45, null
  br i1 %46, label %47, label %89

47:                                               ; preds = %40
  %48 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %49 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UDESC_INTERFACE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %55 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %57, 8
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %61 = bitcast %struct.usb_descriptor* %60 to i8*
  %62 = bitcast i8* %61 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %62, %struct.usb_interface_descriptor** %14, align 8
  %63 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %14, align 8
  %64 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %11, align 8
  store %struct.usb_hw_ep_scratch_sub* %68, %struct.usb_hw_ep_scratch_sub** %9, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %9, align 8
  store %struct.usb_hw_ep_scratch_sub* %70, %struct.usb_hw_ep_scratch_sub** %10, align 8
  br label %71

71:                                               ; preds = %69, %67
  br label %72

72:                                               ; preds = %71, %53, %47
  %73 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %74 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UDESC_ENDPOINT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %80 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = icmp uge i64 %82, 12
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.usb_descriptor*, %struct.usb_descriptor** %13, align 8
  %86 = bitcast %struct.usb_descriptor* %85 to i8*
  %87 = bitcast i8* %86 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %87, %struct.usb_endpoint_descriptor** %15, align 8
  br label %93

88:                                               ; preds = %78, %72
  br label %40

89:                                               ; preds = %40
  %90 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %11, align 8
  %91 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %92 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %91, i32 0, i32 4
  store %struct.usb_hw_ep_scratch_sub* %90, %struct.usb_hw_ep_scratch_sub** %92, align 8
  store i32 0, i32* %4, align 4
  br label %333

93:                                               ; preds = %84
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %95 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @UE_XFERTYPE, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %332

102:                                              ; preds = %93
  %103 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %104 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %12, align 8
  %105 = icmp eq %struct.usb_hw_ep_scratch_sub* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %333

107:                                              ; preds = %102
  %108 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %109 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @UGETW(i32 %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = and i32 %112, 63488
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %107
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @USB_SPEED_HIGH, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = load i32, i32* %17, align 4
  %121 = ashr i32 %120, 11
  %122 = and i32 %121, 3
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %17, align 4
  %124 = and i32 %123, 2047
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, 2
  store i32 %129, i32* %17, align 4
  br label %133

130:                                              ; preds = %119
  %131 = load i32, i32* %17, align 4
  %132 = mul nsw i32 %131, 3
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %115, %107
  %135 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %136 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @UE_ADDR, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %255

142:                                              ; preds = %134
  %143 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %144 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32 (i32, %struct.usb_hw_ep_profile**, i32)*, i32 (i32, %struct.usb_hw_ep_profile**, i32)** %146, align 8
  %148 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %149 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %19, align 4
  %152 = call i32 %147(i32 %150, %struct.usb_hw_ep_profile** %8, i32 %151)
  %153 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %154 = icmp eq %struct.usb_hw_ep_profile* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %156)
  store i32 1, i32* %4, align 4
  br label %333

158:                                              ; preds = %142
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @UE_CONTROL, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %202

162:                                              ; preds = %158
  %163 = load i32, i32* %19, align 4
  %164 = srem i32 %163, 8
  %165 = shl i32 1, %164
  %166 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %167 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sdiv i32 %169, 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %165
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %19, align 4
  %176 = srem i32 %175, 8
  %177 = shl i32 1, %176
  %178 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %179 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sdiv i32 %181, 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %177
  store i32 %186, i32* %184, align 4
  %187 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %188 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %162
  %193 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %194 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %162
  %199 = load i32, i32* %19, align 4
  %200 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  store i32 1, i32* %4, align 4
  br label %333

201:                                              ; preds = %192
  br label %254

202:                                              ; preds = %158
  %203 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %204 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @UE_DIR_IN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %202
  %210 = load i32, i32* %19, align 4
  %211 = srem i32 %210, 8
  %212 = shl i32 1, %211
  %213 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %214 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sdiv i32 %216, 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %212
  store i32 %221, i32* %219, align 4
  %222 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %223 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %17, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %209
  %228 = load i32, i32* %19, align 4
  %229 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  store i32 1, i32* %4, align 4
  br label %333

230:                                              ; preds = %209
  br label %253

231:                                              ; preds = %202
  %232 = load i32, i32* %19, align 4
  %233 = srem i32 %232, 8
  %234 = shl i32 1, %233
  %235 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %5, align 8
  %236 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sdiv i32 %238, 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %234
  store i32 %243, i32* %241, align 4
  %244 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %245 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %231
  %250 = load i32, i32* %19, align 4
  %251 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  store i32 1, i32* %4, align 4
  br label %333

252:                                              ; preds = %231
  br label %253

253:                                              ; preds = %252, %230
  br label %254

254:                                              ; preds = %253, %201
  br label %323

255:                                              ; preds = %134
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %285

258:                                              ; preds = %255
  %259 = load i32, i32* %17, align 4
  %260 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %261 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp sgt i32 %259, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i32 1, i32* %4, align 4
  br label %333

265:                                              ; preds = %258
  %266 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %267 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @UE_DIR_IN, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %265
  %273 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %274 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %277 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  br label %284

278:                                              ; preds = %265
  %279 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %280 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %283 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %278, %272
  br label %322

285:                                              ; preds = %255
  %286 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %287 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %17, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = load i32, i32* %17, align 4
  %293 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %294 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 4
  br label %295

295:                                              ; preds = %291, %285
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* @UE_CONTROL, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  %300 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %301 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %300, i32 0, i32 3
  store i32 1, i32* %301, align 4
  %302 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %303 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %302, i32 0, i32 4
  store i32 1, i32* %303, align 4
  br label %318

304:                                              ; preds = %295
  %305 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %15, align 8
  %306 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @UE_DIR_IN, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %304
  %312 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %313 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %312, i32 0, i32 3
  store i32 1, i32* %313, align 4
  br label %317

314:                                              ; preds = %304
  %315 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %316 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %315, i32 0, i32 4
  store i32 1, i32* %316, align 4
  br label %317

317:                                              ; preds = %314, %311
  br label %318

318:                                              ; preds = %317, %299
  %319 = load i32, i32* %6, align 4
  %320 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %321 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 4
  br label %322

322:                                              ; preds = %318, %284
  br label %323

323:                                              ; preds = %322, %254
  %324 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %325 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %324, i32 1
  store %struct.usb_hw_ep_scratch_sub* %325, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %326 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %11, align 8
  %327 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  %328 = icmp ult %struct.usb_hw_ep_scratch_sub* %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %323
  %330 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %10, align 8
  store %struct.usb_hw_ep_scratch_sub* %330, %struct.usb_hw_ep_scratch_sub** %11, align 8
  br label %331

331:                                              ; preds = %329, %323
  br label %332

332:                                              ; preds = %331, %93
  br label %39

333:                                              ; preds = %264, %249, %227, %198, %155, %106, %89
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(i32, %struct.usb_descriptor*) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
