; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_adb_mouse_receive_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_adb_mouse_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_mouse_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ADB_COMMAND_TALK = common dso_local global i64 0, align 8
@AMS_EXTENDED = common dso_local global i32 0, align 4
@AMS_TOUCHPAD = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i64*)* @adb_mouse_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_mouse_receive_packet(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.adb_mouse_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.adb_mouse_softc* @device_get_softc(i32 %20)
  store %struct.adb_mouse_softc* %21, %struct.adb_mouse_softc** %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @ADB_COMMAND_TALK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %6
  store i32 0, i32* %7, align 4
  br label %270

32:                                               ; preds = %28
  %33 = load i64*, i64** %13, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, 127
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i64*, i64** %13, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, 127
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %43 = load i64*, i64** %13, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, 128
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %18, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %18, align 4
  %52 = load i64*, i64** %13, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 128
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = shl i32 %58, 1
  %60 = load i32, i32* %18, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %18, align 4
  %62 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %63 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AMS_EXTENDED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %32
  store i32 2, i32* %15, align 4
  br label %69

69:                                               ; preds = %139, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 5
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i1 [ false, %69 ], [ %75, %73 ]
  br i1 %77, label %78, label %142

78:                                               ; preds = %76
  %79 = load i64*, i64** %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %83, 7
  %85 = load i32, i32* %15, align 4
  %86 = mul nsw i32 3, %85
  %87 = add nsw i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = shl i64 %84, %88
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = or i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load i64*, i64** %13, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = and i64 %98, 112
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 3, %100
  %102 = sub nsw i32 %101, 3
  %103 = zext i32 %102 to i64
  %104 = shl i64 %99, %103
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = or i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load i64*, i64** %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = and i64 %113, 8
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %15, align 4
  %119 = mul nsw i32 2, %118
  %120 = sub nsw i32 %119, 2
  %121 = shl i32 %117, %120
  %122 = load i32, i32* %18, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %18, align 4
  %124 = load i64*, i64** %13, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = and i64 %128, 128
  %130 = icmp ne i64 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %15, align 4
  %134 = mul nsw i32 2, %133
  %135 = sub nsw i32 %134, 1
  %136 = shl i32 %132, %135
  %137 = load i32, i32* %18, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %78
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %69

142:                                              ; preds = %76
  br label %144

143:                                              ; preds = %32
  store i32 2, i32* %12, align 4
  br label %144

144:                                              ; preds = %143, %142
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %146, 2
  %148 = mul nsw i32 3, %147
  %149 = shl i32 64, %148
  %150 = and i32 %145, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %153, 2
  %155 = mul nsw i32 3, %154
  %156 = shl i32 -64, %155
  %157 = load i32, i32* %16, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %152, %144
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %161, 2
  %163 = mul nsw i32 3, %162
  %164 = shl i32 64, %163
  %165 = and i32 %160, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %159
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 %168, 2
  %170 = mul nsw i32 3, %169
  %171 = shl i32 -64, %170
  %172 = load i32, i32* %17, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %167, %159
  %175 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %176 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @AMS_TOUCHPAD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %210

181:                                              ; preds = %174
  %182 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %183 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %210

186:                                              ; preds = %181
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp eq i32 %188, 18
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  store i32 3, i32* %19, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %193 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  br label %208

194:                                              ; preds = %186
  %195 = load i32, i32* %18, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %199 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 3
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 2, i32* %19, align 4
  br label %204

203:                                              ; preds = %197
  store i32 0, i32* %19, align 4
  br label %204

204:                                              ; preds = %203, %202
  %205 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %206 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %205, i32 0, i32 2
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %194
  br label %208

208:                                              ; preds = %207, %190
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %18, align 4
  br label %210

210:                                              ; preds = %208, %181, %174
  %211 = load i32, i32* %18, align 4
  %212 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %213 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 1, %215
  %217 = call i64 @rounddown2(i32 %211, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %210
  %220 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %221 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @AMS_TOUCHPAD, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %219
  %227 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %228 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %227, i32 0, i32 9
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %230, 1
  %232 = shl i32 1, %231
  %233 = load i32, i32* %18, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %226, %219, %210
  %236 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %237 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %236, i32 0, i32 9
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 1, %239
  %241 = sub nsw i32 %240, 1
  %242 = load i32, i32* %18, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %18, align 4
  %244 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %245 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %244, i32 0, i32 8
  %246 = call i32 @mtx_lock(i32* %245)
  %247 = load i32, i32* %16, align 4
  %248 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %249 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %17, align 4
  %253 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %254 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %259 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 4
  %260 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %261 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %260, i32 0, i32 8
  %262 = call i32 @mtx_unlock(i32* %261)
  %263 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %264 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %263, i32 0, i32 7
  %265 = call i32 @cv_broadcast(i32* %264)
  %266 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %14, align 8
  %267 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %266, i32 0, i32 6
  %268 = load i32, i32* @PZERO, align 4
  %269 = call i32 @selwakeuppri(i32* %267, i32 %268)
  store i32 0, i32* %7, align 4
  br label %270

270:                                              ; preds = %235, %31
  %271 = load i32, i32* %7, align 4
  ret i32 %271
}

declare dso_local %struct.adb_mouse_softc* @device_get_softc(i32) #1

declare dso_local i64 @rounddown2(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @selwakeuppri(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
