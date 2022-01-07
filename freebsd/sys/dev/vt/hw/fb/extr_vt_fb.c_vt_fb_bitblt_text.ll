; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_bitblt_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_bitblt_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i64*, i64*, i64*, i32, i32, i64, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32* }
%struct.vt_window = type { %struct.TYPE_13__, i32, %struct.vt_font* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@VT_FB_MAX_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_fb_bitblt_text(%struct.vt_device* %0, %struct.vt_window* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vt_font*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__, align 4
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_window* %1, %struct.vt_window** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %19 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %18, i32 0, i32 2
  %20 = load %struct.vt_font*, %struct.vt_font** %19, align 8
  store %struct.vt_font* %20, %struct.vt_font** %11, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %186, %3
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %189

32:                                               ; preds = %25
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %182, %32
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %38, %42
  br i1 %43, label %44, label %185

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %47 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %45, %48
  %50 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %51 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %49, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %58 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %56, %59
  %61 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %62 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %60, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %68 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %67, i32 0, i32 1
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @VTBUF_GET_FIELD(i32* %68, i32 %69, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32* @vtfont_lookup(%struct.vt_font* %72, i64 %73)
  store i32* %74, i32** %15, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %77 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %76, i32 0, i32 1
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @VTBUF_ISCURSOR(i32* %77, i32 %78, i32 %79)
  %81 = call i32 @vt_determine_colors(i64 %75, i32 %80, i64* %13, i64* %14)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @VT_FB_MAX_WIDTH, align 4
  %84 = call i32 @PIXEL_WIDTH(i32 %83)
  %85 = mul i32 %82, %84
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %85, %86
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %16, align 8
  %89 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %90 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %131

93:                                               ; preds = %44
  %94 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %95 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %93
  %103 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %104 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %109 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %16, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %107
  %117 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %118 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %123 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %182

131:                                              ; preds = %121, %116, %107, %102, %93, %44
  %132 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %133 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %136 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %139 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @vt_fb_bitblt_bitmap(%struct.vt_device* %132, %struct.vt_window* %133, i32* %134, i32* null, i32 %137, i32 %140, i32 %141, i32 %142, i64 %143, i64 %144)
  %146 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %147 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %131
  %151 = load i64, i64* %12, align 8
  %152 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %153 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %16, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  store i64 %151, i64* %156, align 8
  br label %157

157:                                              ; preds = %150, %131
  %158 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %159 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = icmp ne i64* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %165 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %16, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  store i64 %163, i64* %168, align 8
  br label %169

169:                                              ; preds = %162, %157
  %170 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %171 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %170, i32 0, i32 2
  %172 = load i64*, i64** %171, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load i64, i64* %14, align 8
  %176 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %177 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %176, i32 0, i32 2
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* %16, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64 %175, i64* %180, align 8
  br label %181

181:                                              ; preds = %174, %169
  br label %182

182:                                              ; preds = %181, %130
  %183 = load i32, i32* %7, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %37

185:                                              ; preds = %37
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %8, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %25

189:                                              ; preds = %25
  %190 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %191 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  br label %287

195:                                              ; preds = %189
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %201 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = mul i32 %199, %202
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %211 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul i32 %209, %212
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %221 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = mul i32 %219, %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %231 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = mul i32 %229, %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %237 = call i64 @vt_is_cursor_in_area(%struct.vt_device* %236, %struct.TYPE_14__* %17)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %287

239:                                              ; preds = %195
  %240 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %241 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %242 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %243 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %242, i32 0, i32 7
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %248 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %247, i32 0, i32 7
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %253 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %252, i32 0, i32 7
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %258 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %257, i32 0, i32 7
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %263 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %266 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add i32 %264, %269
  %271 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %272 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %275 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %273, %278
  %280 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %281 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %284 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @vt_fb_bitblt_bitmap(%struct.vt_device* %240, %struct.vt_window* %241, i32* %246, i32* %251, i32 %256, i32 %261, i32 %270, i32 %279, i64 %282, i64 %285)
  br label %287

287:                                              ; preds = %194, %239, %195
  ret void
}

declare dso_local i64 @VTBUF_GET_FIELD(i32*, i32, i32) #1

declare dso_local i32* @vtfont_lookup(%struct.vt_font*, i64) #1

declare dso_local i32 @vt_determine_colors(i64, i32, i64*, i64*) #1

declare dso_local i32 @VTBUF_ISCURSOR(i32*, i32, i32) #1

declare dso_local i32 @PIXEL_WIDTH(i32) #1

declare dso_local i32 @vt_fb_bitblt_bitmap(%struct.vt_device*, %struct.vt_window*, i32*, i32*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @vt_is_cursor_in_area(%struct.vt_device*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
