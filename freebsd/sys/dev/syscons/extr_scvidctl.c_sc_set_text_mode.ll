; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvidctl.c_sc_set_text_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvidctl.c_sc_set_text_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, i32*, i64, i64, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i32*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.tty = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.winsize = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@FONT_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FONT_14 = common dso_local global i32 0, align 4
@FONT_16 = common dso_local global i32 0, align 4
@UNKNOWN_MODE = common dso_local global i32 0, align 4
@MOUSE_HIDDEN = common dso_local global i32 0, align 4
@GRAPHICS_MODE = common dso_local global i32 0, align 4
@PIXEL_MODE = common dso_local global i32 0, align 4
@MOUSE_VISIBLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_set_text_mode(%struct.TYPE_17__* %0, %struct.tty* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.tty*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__, align 4
  %17 = alloca %struct.winsize, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store %struct.tty* %1, %struct.tty** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @vidd_get_info(%struct.TYPE_18__* %26, i32 %27, %struct.TYPE_16__* %16)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @ENODEV, align 4
  store i32 %31, i32* %8, align 4
  br label %263

32:                                               ; preds = %7
  %33 = load i32, i32* %15, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %14, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 14
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 8, i32* %14, align 4
  br label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = icmp sge i32 %49, 16
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 16, i32* %14, align 4
  br label %53

52:                                               ; preds = %48
  store i32 14, i32* %14, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %14, align 4
  switch i32 %55, label %107 [
    i32 8, label %56
    i32 14, label %73
    i32 16, label %90
  ]

56:                                               ; preds = %54
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FONT_8, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %8, align 4
  br label %263

67:                                               ; preds = %56
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %18, align 8
  br label %107

73:                                               ; preds = %54
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FONT_14, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %8, align 4
  br label %263

84:                                               ; preds = %73
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %18, align 8
  br label %107

90:                                               ; preds = %54
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FONT_16, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %8, align 4
  br label %263

101:                                              ; preds = %90
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %18, align 8
  br label %107

107:                                              ; preds = %54, %101, %84, %67
  %108 = load i32, i32* %12, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110, %107
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %13, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %118
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = call i32 (...) @spltty()
  store i32 %130, i32* %21, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %132 = call i32 @sc_clean_up(%struct.TYPE_17__* %131)
  store i32 %132, i32* %20, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @splx(i32 %135)
  %137 = load i32, i32* %20, align 4
  store i32 %137, i32* %8, align 4
  br label %263

138:                                              ; preds = %129
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32* @sc_render_match(%struct.TYPE_17__* %139, i32 %146, i32 0)
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load i32, i32* %21, align 4
  %151 = call i32 @splx(i32 %150)
  %152 = load i32, i32* @ENODEV, align 4
  store i32 %152, i32* %8, align 4
  br label %263

153:                                              ; preds = %138
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 12
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %160 = call i32 @sc_hist_save(%struct.TYPE_17__* %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* @UNKNOWN_MODE, align 4
  %166 = load i32, i32* @MOUSE_HIDDEN, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* @GRAPHICS_MODE, align 4
  %173 = load i32, i32* @PIXEL_MODE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @MOUSE_VISIBLE, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 11
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 10
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %197, 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  %208 = load i32*, i32** %18, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 9
  store i32* %208, i32** %210, align 8
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %218 = load i32, i32* @TRUE, align 4
  %219 = load i32, i32* @TRUE, align 4
  %220 = call i32 @sc_alloc_scr_buffer(%struct.TYPE_17__* %217, i32 %218, i32 %219)
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %222 = call i32 @sc_init_emulator(%struct.TYPE_17__* %221, i32* null)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %224 = load i32, i32* @FALSE, align 4
  %225 = call i32 @sc_alloc_cut_buffer(%struct.TYPE_17__* %223, i32 %224)
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* @FALSE, align 4
  %229 = call i32 @sc_alloc_history_buffer(%struct.TYPE_17__* %226, i32 0, i32 %227, i32 %228)
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @splx(i32 %230)
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = icmp eq %struct.TYPE_17__* %232, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %161
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %241 = call i32 @set_mode(%struct.TYPE_17__* %240)
  br label %242

242:                                              ; preds = %239, %161
  %243 = load i32, i32* @UNKNOWN_MODE, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load %struct.tty*, %struct.tty** %10, align 8
  %250 = icmp eq %struct.tty* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  store i32 0, i32* %8, align 4
  br label %263

252:                                              ; preds = %242
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.winsize, %struct.winsize* %17, i32 0, i32 0
  store i32 %255, i32* %256, align 4
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds %struct.winsize, %struct.winsize* %17, i32 0, i32 1
  store i32 %259, i32* %260, align 4
  %261 = load %struct.tty*, %struct.tty** %10, align 8
  %262 = call i32 @tty_set_winsize(%struct.tty* %261, %struct.winsize* %17)
  store i32 0, i32* %8, align 4
  br label %263

263:                                              ; preds = %252, %251, %149, %134, %99, %82, %65, %30
  %264 = load i32, i32* %8, align 4
  ret i32 %264
}

declare dso_local i64 @vidd_get_info(%struct.TYPE_18__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @sc_clean_up(%struct.TYPE_17__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32* @sc_render_match(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sc_hist_save(%struct.TYPE_17__*) #1

declare dso_local i32 @sc_alloc_scr_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sc_init_emulator(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @sc_alloc_cut_buffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sc_alloc_history_buffer(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @set_mode(%struct.TYPE_17__*) #1

declare dso_local i32 @tty_set_winsize(%struct.tty*, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
