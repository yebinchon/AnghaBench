; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_bitblt_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_bitblt_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i64, %struct.fb_info* }
%struct.fb_info = type { i32*, i32, i64, i32 }
%struct.vt_window = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FB_FLAG_NOWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unmapped framebuffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_fb_bitblt_bitmap(%struct.vt_device* %0, %struct.vt_window* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.vt_device*, align 8
  %12 = alloca %struct.vt_window*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.fb_info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %11, align 8
  store %struct.vt_window* %1, %struct.vt_window** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %32 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  %33 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %32, i32 0, i32 1
  %34 = load %struct.fb_info*, %struct.fb_info** %33, align 8
  store %struct.fb_info* %34, %struct.fb_info** %21, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %36 = call i32 @FBTYPE_GET_BYTESPP(%struct.fb_info* %35)
  store i32 %36, i32* %26, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %19, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %22, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %20, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add i32 %49, 7
  %51 = udiv i32 %50, 8
  store i32 %51, i32* %27, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FB_FLAG_NOWRITE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %10
  br label %231

59:                                               ; preds = %10
  %60 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @KASSERT(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %16, align 4
  %68 = add i32 %66, %67
  %69 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %70 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ugt i32 %68, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %59
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %78 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp uge i32 %76, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %231

84:                                               ; preds = %75
  %85 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %86 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sub i32 %89, %90
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %84, %59
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %93, %94
  %96 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %97 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ugt i32 %95, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %92
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %105 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp uge i32 %103, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %231

111:                                              ; preds = %102
  %112 = load %struct.vt_window*, %struct.vt_window** %12, align 8
  %113 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sub i32 %116, %117
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %111, %92
  store i32 0, i32* %29, align 4
  br label %120

120:                                              ; preds = %228, %119
  %121 = load i32, i32* %29, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %231

124:                                              ; preds = %120
  store i32 0, i32* %28, align 4
  br label %125

125:                                              ; preds = %224, %124
  %126 = load i32, i32* %28, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %227

129:                                              ; preds = %125
  %130 = load i32, i32* %29, align 4
  %131 = load i32, i32* %27, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %28, align 4
  %134 = sdiv i32 %133, 8
  %135 = add nsw i32 %132, %134
  store i32 %135, i32* %31, align 4
  %136 = load i32, i32* %28, align 4
  %137 = srem i32 %136, 8
  %138 = ashr i32 128, %137
  store i32 %138, i32* %30, align 4
  %139 = load i32*, i32** %14, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %129
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %31, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %30, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %224

151:                                              ; preds = %141, %129
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %29, align 4
  %154 = add i32 %152, %153
  %155 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = mul i32 %154, %157
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %28, align 4
  %161 = add i32 %159, %160
  %162 = load i32, i32* %26, align 4
  %163 = mul i32 %161, %162
  %164 = add i32 %158, %163
  store i32 %164, i32* %25, align 4
  %165 = load %struct.vt_device*, %struct.vt_device** %11, align 8
  %166 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %25, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %25, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* %31, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %30, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %151
  %181 = load i32, i32* %22, align 4
  br label %184

182:                                              ; preds = %151
  %183 = load i32, i32* %23, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  store i32 %185, i32* %24, align 4
  %186 = load i32, i32* %26, align 4
  switch i32 %186, label %222 [
    i32 1, label %187
    i32 2, label %192
    i32 3, label %197
    i32 4, label %217
  ]

187:                                              ; preds = %184
  %188 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %24, align 4
  %191 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %188, i32 %189, i32 %190)
  br label %223

192:                                              ; preds = %184
  %193 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* %24, align 4
  %196 = call i32 @vt_fb_mem_wr2(%struct.fb_info* %193, i32 %194, i32 %195)
  br label %223

197:                                              ; preds = %184
  %198 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %199 = load i32, i32* %25, align 4
  %200 = load i32, i32* %24, align 4
  %201 = ashr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %198, i32 %199, i32 %202)
  %204 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %205 = load i32, i32* %25, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* %24, align 4
  %208 = ashr i32 %207, 8
  %209 = and i32 %208, 255
  %210 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %204, i32 %206, i32 %209)
  %211 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %212 = load i32, i32* %25, align 4
  %213 = add nsw i32 %212, 2
  %214 = load i32, i32* %24, align 4
  %215 = and i32 %214, 255
  %216 = call i32 @vt_fb_mem_wr1(%struct.fb_info* %211, i32 %213, i32 %215)
  br label %223

217:                                              ; preds = %184
  %218 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  %219 = load i32, i32* %25, align 4
  %220 = load i32, i32* %24, align 4
  %221 = call i32 @vt_fb_mem_wr4(%struct.fb_info* %218, i32 %219, i32 %220)
  br label %223

222:                                              ; preds = %184
  br label %223

223:                                              ; preds = %222, %217, %197, %192, %187
  br label %224

224:                                              ; preds = %223, %150
  %225 = load i32, i32* %28, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %28, align 4
  br label %125

227:                                              ; preds = %125
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %29, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %29, align 4
  br label %120

231:                                              ; preds = %58, %83, %110, %120
  ret void
}

declare dso_local i32 @FBTYPE_GET_BYTESPP(%struct.fb_info*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vt_fb_mem_wr1(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @vt_fb_mem_wr2(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @vt_fb_mem_wr4(%struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
