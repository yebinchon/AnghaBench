; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_one_text_pixels_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_one_text_pixels_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, i64, i64, %struct.vt_mouse_cursor*, i64 }
%struct.vt_mouse_cursor = type { i32, i32, i32*, i32* }
%struct.vt_window = type { %struct.TYPE_12__, %struct.vt_font*, %struct.vt_buf }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.vt_buf = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@VT_VGA_PIXELS_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_window*, i32, i32)* @vga_bitblt_one_text_pixels_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_one_text_pixels_block(%struct.vt_device* %0, %struct.vt_window* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vt_device*, align 8
  %6 = alloca %struct.vt_window*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vt_buf*, align 8
  %10 = alloca %struct.vt_font*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_13__, align 4
  %26 = alloca %struct.vt_mouse_cursor*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %5, align 8
  store %struct.vt_window* %1, %struct.vt_window** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %33 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %34 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %33, i32 0, i32 1
  %35 = load %struct.vt_font*, %struct.vt_font** %34, align 8
  %36 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %18, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %19, align 8
  %41 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %42 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %41, i32 0, i32 1
  %43 = load %struct.vt_font*, %struct.vt_font** %42, align 8
  %44 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 16
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %20, align 8
  %49 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %50 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %49, i32 0, i32 2
  store %struct.vt_buf* %50, %struct.vt_buf** %9, align 8
  %51 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %52 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %51, i32 0, i32 1
  %53 = load %struct.vt_font*, %struct.vt_font** %52, align 8
  store %struct.vt_font* %53, %struct.vt_font** %10, align 8
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %56 = call i32 @memset(i32* %55, i32 0, i32 64)
  %57 = mul nuw i64 4, %38
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32* %40, i32 0, i32 %58)
  %60 = mul nuw i64 4, %47
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i32* %48, i32 0, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %65 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %63, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %4
  %71 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %72 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %70, %4
  br label %77

77:                                               ; preds = %146, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %81 = add i32 %79, %80
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %86 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %84, %89
  br label %91

91:                                               ; preds = %83, %77
  %92 = phi i1 [ false, %77 ], [ %90, %83 ]
  br i1 %92, label %93, label %224

93:                                               ; preds = %91
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %96 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  %101 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %102 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = udiv i32 %100, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %107 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub i32 %105, %110
  %112 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %113 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = udiv i32 %111, %114
  store i32 %115, i32* %13, align 4
  %116 = load %struct.vt_buf*, %struct.vt_buf** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @VTBUF_GET_FIELD(%struct.vt_buf* %116, i32 %117, i32 %118)
  store i32 %119, i32* %21, align 4
  %120 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %121 = load i32, i32* %21, align 4
  %122 = call i32* @vtfont_lookup(%struct.vt_font* %120, i32 %121)
  store i32* %122, i32** %24, align 8
  %123 = load i32, i32* %21, align 4
  %124 = load %struct.vt_buf*, %struct.vt_buf** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @VTBUF_ISCURSOR(%struct.vt_buf* %124, i32 %125, i32 %126)
  %128 = call i32 @vt_determine_colors(i32 %123, i32 %127, i64* %22, i64* %23)
  %129 = load i64, i64* %22, align 8
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %93
  %135 = load i32, i32* %17, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %134, %93
  %138 = load i64, i64* %23, align 8
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 2
  %142 = icmp ne i32 %141, 2
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* %17, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %17, align 4
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i64, i64* %22, align 8
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i64, i64* %23, align 8
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, 2
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %158 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul i32 %156, %159
  %161 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %162 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %160, %165
  %167 = sub i32 %155, %166
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add i32 %168, 1
  %170 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %171 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = mul i32 %169, %172
  %174 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %175 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %173, %178
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %182 = add i32 %180, %181
  %183 = call i32 @min(i32 %179, i32 %182)
  %184 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %185 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @min(i32 %183, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %192 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = mul i32 %190, %193
  %195 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %196 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %194, %199
  %201 = load i32, i32* %15, align 4
  %202 = sub i32 %201, %200
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = sub i32 %204, %203
  store i32 %205, i32* %15, align 4
  %206 = load i32*, i32** %24, align 8
  %207 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %208 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %213 = urem i32 %211, %212
  %214 = load i32, i32* %15, align 4
  %215 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %216 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %22, align 8
  %219 = load i64, i64* %23, align 8
  %220 = call i32 @vga_copy_bitmap_portion(i32* %40, i32* %48, i32* %206, i32* null, i32 %209, i32 %210, i32 %213, i32 %214, i32 0, i32 0, i32 %217, i64 %218, i64 %219, i32 0)
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %11, align 4
  %223 = add i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %77

224:                                              ; preds = %91
  %225 = load i32, i32* %7, align 4
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %8, align 4
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %233 = add i32 %231, %232
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %238 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %236, %239
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %244 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %395

247:                                              ; preds = %224
  %248 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %249 = call i64 @vt_is_cursor_in_area(%struct.vt_device* %248, %struct.TYPE_13__* %25)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %395

251:                                              ; preds = %247
  %252 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %253 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %252, i32 0, i32 4
  %254 = load %struct.vt_mouse_cursor*, %struct.vt_mouse_cursor** %253, align 8
  store %struct.vt_mouse_cursor* %254, %struct.vt_mouse_cursor** %26, align 8
  %255 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %256 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %259 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %257, %262
  store i32 %263, i32* %27, align 4
  %264 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %265 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %268 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %266, %271
  store i32 %272, i32* %28, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %27, align 4
  %275 = icmp ugt i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %251
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %27, align 4
  %279 = sub i32 %277, %278
  br label %281

280:                                              ; preds = %251
  br label %281

281:                                              ; preds = %280, %276
  %282 = phi i32 [ %279, %276 ], [ 0, %280 ]
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %27, align 4
  %284 = load i32, i32* %7, align 4
  %285 = icmp ugt i32 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i32, i32* %27, align 4
  %288 = load i32, i32* %7, align 4
  %289 = sub i32 %287, %288
  br label %291

290:                                              ; preds = %281
  br label %291

291:                                              ; preds = %290, %286
  %292 = phi i32 [ %289, %286 ], [ 0, %290 ]
  store i32 %292, i32* %29, align 4
  %293 = load %struct.vt_mouse_cursor*, %struct.vt_mouse_cursor** %26, align 8
  %294 = getelementptr inbounds %struct.vt_mouse_cursor, %struct.vt_mouse_cursor* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sub i32 %295, %296
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %300 = add i32 %298, %299
  %301 = load i32, i32* %27, align 4
  %302 = sub i32 %300, %301
  %303 = call i32 @min(i32 %297, i32 %302)
  %304 = load %struct.vt_window*, %struct.vt_window** %6, align 8
  %305 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %27, align 4
  %310 = sub i32 %308, %309
  %311 = call i32 @min(i32 %303, i32 %310)
  %312 = load i32, i32* @VT_VGA_PIXELS_BLOCK, align 4
  %313 = call i32 @min(i32 %311, i32 %312)
  store i32 %313, i32* %15, align 4
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %28, align 4
  %316 = icmp ugt i32 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %291
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %28, align 4
  %320 = sub i32 %318, %319
  br label %322

321:                                              ; preds = %291
  br label %322

322:                                              ; preds = %321, %317
  %323 = phi i32 [ %320, %317 ], [ 0, %321 ]
  store i32 %323, i32* %30, align 4
  %324 = load i32, i32* %28, align 4
  %325 = load i32, i32* %8, align 4
  %326 = icmp ugt i32 %324, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %322
  %328 = load i32, i32* %28, align 4
  %329 = load i32, i32* %8, align 4
  %330 = sub i32 %328, %329
  br label %332

331:                                              ; preds = %322
  br label %332

332:                                              ; preds = %331, %327
  %333 = phi i32 [ %330, %327 ], [ 0, %331 ]
  store i32 %333, i32* %31, align 4
  %334 = load %struct.vt_mouse_cursor*, %struct.vt_mouse_cursor** %26, align 8
  %335 = getelementptr inbounds %struct.vt_mouse_cursor, %struct.vt_mouse_cursor* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %30, align 4
  %338 = sub i32 %336, %337
  %339 = load i32, i32* %8, align 4
  %340 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %341 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %339, %342
  %344 = load i32, i32* %28, align 4
  %345 = sub i32 %343, %344
  %346 = call i32 @min(i32 %338, i32 %345)
  %347 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %348 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @min(i32 %346, i32 %349)
  store i32 %350, i32* %32, align 4
  %351 = load %struct.vt_mouse_cursor*, %struct.vt_mouse_cursor** %26, align 8
  %352 = getelementptr inbounds %struct.vt_mouse_cursor, %struct.vt_mouse_cursor* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.vt_mouse_cursor*, %struct.vt_mouse_cursor** %26, align 8
  %355 = getelementptr inbounds %struct.vt_mouse_cursor, %struct.vt_mouse_cursor* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.vt_mouse_cursor*, %struct.vt_mouse_cursor** %26, align 8
  %358 = getelementptr inbounds %struct.vt_mouse_cursor, %struct.vt_mouse_cursor* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %29, align 4
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %30, align 4
  %364 = load i32, i32* %31, align 4
  %365 = load i32, i32* %32, align 4
  %366 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %367 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %370 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @vga_copy_bitmap_portion(i32* %40, i32* %48, i32* %353, i32* %356, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i64 %368, i64 %371, i32 1)
  %373 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %374 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, 1
  %379 = icmp ne i32 %378, 1
  br i1 %379, label %380, label %383

380:                                              ; preds = %332
  %381 = load i32, i32* %17, align 4
  %382 = add i32 %381, 1
  store i32 %382, i32* %17, align 4
  br label %383

383:                                              ; preds = %380, %332
  %384 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %385 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = and i32 %388, 2
  %390 = icmp ne i32 %389, 2
  br i1 %390, label %391, label %394

391:                                              ; preds = %383
  %392 = load i32, i32* %17, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %17, align 4
  br label %394

394:                                              ; preds = %391, %383
  br label %395

395:                                              ; preds = %394, %247, %224
  %396 = load i32, i32* %17, align 4
  %397 = icmp eq i32 %396, 2
  br i1 %397, label %398, label %408

398:                                              ; preds = %395
  %399 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %400 = load i64, i64* %22, align 8
  %401 = load i64, i64* %23, align 8
  %402 = load i32, i32* %7, align 4
  %403 = load i32, i32* %8, align 4
  %404 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %405 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @vga_bitblt_pixels_block_2colors(%struct.vt_device* %399, i32* %40, i64 %400, i64 %401, i32 %402, i32 %403, i32 %406)
  br label %416

408:                                              ; preds = %395
  %409 = load %struct.vt_device*, %struct.vt_device** %5, align 8
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.vt_font*, %struct.vt_font** %10, align 8
  %413 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @vga_bitblt_pixels_block_ncolors(%struct.vt_device* %409, i32* %48, i32 %410, i32 %411, i32 %414)
  br label %416

416:                                              ; preds = %408, %398
  %417 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %417)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @VTBUF_GET_FIELD(%struct.vt_buf*, i32, i32) #2

declare dso_local i32* @vtfont_lookup(%struct.vt_font*, i32) #2

declare dso_local i32 @vt_determine_colors(i32, i32, i64*, i64*) #2

declare dso_local i32 @VTBUF_ISCURSOR(%struct.vt_buf*, i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @vga_copy_bitmap_portion(i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32) #2

declare dso_local i64 @vt_is_cursor_in_area(%struct.vt_device*, %struct.TYPE_13__*) #2

declare dso_local i32 @vga_bitblt_pixels_block_2colors(%struct.vt_device*, i32*, i64, i64, i32, i32, i32) #2

declare dso_local i32 @vga_bitblt_pixels_block_ncolors(%struct.vt_device*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
