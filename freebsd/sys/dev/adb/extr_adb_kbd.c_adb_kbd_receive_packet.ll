; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_adb_kbd_receive_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_adb_kbd_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_kbd_softc = type { i32, i32*, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_6__*, i32, i32)* }

@ADB_COMMAND_TALK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@akbd_repeat = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i64*)* @adb_kbd_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_kbd_receive_packet(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.adb_kbd_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.adb_kbd_softc* @device_get_softc(i32 %15)
  store %struct.adb_kbd_softc* %16, %struct.adb_kbd_softc** %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @ADB_COMMAND_TALK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %263

21:                                               ; preds = %6
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 0, i32* %7, align 4
  br label %263

28:                                               ; preds = %24
  %29 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %30 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %29, i32 0, i32 5
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load i64*, i64** %13, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 127
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %38 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %39 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %38, i32 0, i32 5
  %40 = call i32 @mtx_unlock(i32* %39)
  store i32 0, i32* %7, align 4
  br label %263

41:                                               ; preds = %28
  %42 = load i64*, i64** %13, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 255
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %48 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %47, i32 0, i32 5
  %49 = call i32 @mtx_unlock(i32* %48)
  store i32 0, i32* %7, align 4
  br label %263

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i64*, i64** %13, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 127
  %56 = icmp eq i64 %55, 57
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  %58 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %59 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 7
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load i64*, i64** %13, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = and i64 %65, 127
  %67 = trunc i64 %66 to i32
  %68 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %69 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %72 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %67, i32* %76, align 4
  %77 = load i64*, i64** %13, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, 127
  %81 = or i64 %80, 128
  %82 = trunc i64 %81 to i32
  %83 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %84 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %87 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32 %82, i32* %91, align 4
  br label %106

92:                                               ; preds = %57, %51
  %93 = load i64*, i64** %13, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %98 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %101 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  store i32 %96, i32* %105, align 4
  br label %106

106:                                              ; preds = %92, %62
  %107 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %108 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %111 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 255
  br i1 %117, label %118, label %131

118:                                              ; preds = %106
  %119 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %120 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %123 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %130 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %118, %106
  %132 = load i64*, i64** %13, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  %134 = load i64, i64* %133, align 8
  %135 = and i64 %134, 127
  %136 = icmp eq i64 %135, 57
  br i1 %136, label %137, label %172

137:                                              ; preds = %131
  %138 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %139 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 7
  br i1 %141, label %142, label %172

142:                                              ; preds = %137
  %143 = load i64*, i64** %13, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = and i64 %145, 127
  %147 = trunc i64 %146 to i32
  %148 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %149 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %152 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  store i32 %147, i32* %156, align 4
  %157 = load i64*, i64** %13, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  %159 = load i64, i64* %158, align 8
  %160 = and i64 %159, 127
  %161 = or i64 %160, 128
  %162 = trunc i64 %161 to i32
  %163 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %164 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %167 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32 %162, i32* %171, align 4
  br label %186

172:                                              ; preds = %137, %131
  %173 = load i64*, i64** %13, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %178 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %181 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %176, i32* %185, align 4
  br label %186

186:                                              ; preds = %172, %142
  %187 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %188 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %191 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %196, 255
  br i1 %197, label %198, label %211

198:                                              ; preds = %186
  %199 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %200 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %203 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %210 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %198, %186
  %212 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %213 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %212, i32 0, i32 6
  %214 = call i32 @callout_stop(i32* %213)
  %215 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %216 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, 128
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %211
  %221 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %222 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %221, i32 0, i32 6
  %223 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %224 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @ms_to_ticks(i32 %226)
  %228 = load i32, i32* @akbd_repeat, align 4
  %229 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %230 = call i32 @callout_reset(i32* %222, i32 %227, i32 %228, %struct.adb_kbd_softc* %229)
  br label %231

231:                                              ; preds = %220, %211
  %232 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %233 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %232, i32 0, i32 5
  %234 = call i32 @mtx_unlock(i32* %233)
  %235 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %236 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %235, i32 0, i32 4
  %237 = call i32 @cv_broadcast(i32* %236)
  %238 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %239 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %238, i32 0, i32 3
  %240 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_6__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %262

242:                                              ; preds = %231
  %243 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %244 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %243, i32 0, i32 3
  %245 = call i64 @KBD_IS_BUSY(%struct.TYPE_6__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %242
  %248 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %249 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  %252 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %251, align 8
  %253 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %254 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %253, i32 0, i32 3
  %255 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %256 = load %struct.adb_kbd_softc*, %struct.adb_kbd_softc** %14, align 8
  %257 = getelementptr inbounds %struct.adb_kbd_softc, %struct.adb_kbd_softc* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 %252(%struct.TYPE_6__* %254, i32 %255, i32 %260)
  br label %262

262:                                              ; preds = %247, %242, %231
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %262, %46, %36, %27, %20
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local %struct.adb_kbd_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.adb_kbd_softc*) #1

declare dso_local i32 @ms_to_ticks(i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_6__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
