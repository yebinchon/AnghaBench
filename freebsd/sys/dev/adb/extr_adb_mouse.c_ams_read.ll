; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.adb_mouse_softc = type { i64, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @ams_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adb_mouse_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = call %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev* %12)
  store %struct.adb_mouse_softc* %13, %struct.adb_mouse_softc** %8, align 8
  %14 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %15 = icmp eq %struct.adb_mouse_softc* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  store i32 %17, i32* %4, align 4
  br label %297

18:                                               ; preds = %3
  %19 = load %struct.uio*, %struct.uio** %6, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %297

24:                                               ; preds = %18
  %25 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %26 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %25, i32 0, i32 6
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %29 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %251, label %32

32:                                               ; preds = %24
  %33 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %34 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %32
  %38 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %39 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %37
  %43 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %44 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %47 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %57 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %56, i32 0, i32 6
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %59, i32* %4, align 4
  br label %297

60:                                               ; preds = %50
  %61 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %62 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %61, i32 0, i32 8
  %63 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %64 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %63, i32 0, i32 6
  %65 = call i32 @cv_wait_sig(i32* %62, i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %70 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %69, i32 0, i32 6
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %297

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %42, %37, %32
  %75 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %76 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 128, i32* %78, align 4
  %79 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %80 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = shl i32 %85, 2
  %87 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %88 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  %93 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %94 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = shl i32 %99, 1
  %101 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %102 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %108 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 2
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %115 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  %120 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %121 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 127
  br i1 %123, label %124, label %137

124:                                              ; preds = %74
  %125 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %126 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 127, i32* %128, align 4
  %129 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %130 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 127
  %133 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %134 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 %132, i32* %136, align 4
  br label %168

137:                                              ; preds = %74
  %138 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %139 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, -127
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %144 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 -127, i32* %146, align 4
  %147 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %148 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 127
  %151 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %152 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  store i32 %150, i32* %154, align 4
  br label %167

155:                                              ; preds = %137
  %156 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %157 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %160 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %158, i32* %162, align 4
  %163 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %164 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %155, %142
  br label %168

168:                                              ; preds = %167, %124
  %169 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %170 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 127
  br i1 %172, label %173, label %186

173:                                              ; preds = %168
  %174 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %175 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  store i32 127, i32* %177, align 4
  %178 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %179 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 127
  %182 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %183 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  store i32 %181, i32* %185, align 4
  br label %217

186:                                              ; preds = %168
  %187 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %188 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, -127
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %193 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 -127, i32* %195, align 4
  %196 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %197 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 127
  %200 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %201 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 4
  store i32 %199, i32* %203, align 4
  br label %216

204:                                              ; preds = %186
  %205 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %206 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %209 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %208, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  store i32 %207, i32* %211, align 4
  %212 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %213 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %204, %191
  br label %217

217:                                              ; preds = %216, %173
  %218 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %219 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 5
  store i32 0, i32* %221, align 4
  %222 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %223 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 6
  store i32 0, i32* %225, align 4
  %226 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %227 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = ashr i32 %228, 3
  %230 = xor i32 %229, -1
  %231 = and i32 %230, 127
  %232 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %233 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 7
  store i32 %231, i32* %235, align 4
  %236 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %237 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %240 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 4
  %241 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %242 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %241, i32 0, i32 1
  store i32 0, i32* %242, align 8
  %243 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %244 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %243, i32 0, i32 2
  store i32 0, i32* %244, align 4
  %245 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %246 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %245, i32 0, i32 7
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %250 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %217, %24
  %252 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %253 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.uio*, %struct.uio** %6, align 8
  %256 = getelementptr inbounds %struct.uio, %struct.uio* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ugt i64 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load %struct.uio*, %struct.uio** %6, align 8
  %261 = getelementptr inbounds %struct.uio, %struct.uio* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  br label %267

263:                                              ; preds = %251
  %264 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %265 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  br label %267

267:                                              ; preds = %263, %259
  %268 = phi i64 [ %262, %259 ], [ %266, %263 ]
  store i64 %268, i64* %9, align 8
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %270 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %271 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %270, i32 0, i32 5
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %274 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %278 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = sub i64 %276, %279
  %281 = getelementptr inbounds i32, i32* %272, i64 %280
  %282 = load i64, i64* %9, align 8
  %283 = call i32 @memcpy(i32* %269, i32* %281, i64 %282)
  %284 = load i64, i64* %9, align 8
  %285 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %286 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = sub i64 %287, %284
  store i64 %288, i64* %286, align 8
  %289 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %290 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %289, i32 0, i32 6
  %291 = call i32 @mtx_unlock(i32* %290)
  %292 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %293 = load i64, i64* %9, align 8
  %294 = load %struct.uio*, %struct.uio** %6, align 8
  %295 = call i32 @uiomove(i32* %292, i64 %293, %struct.uio* %294)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %267, %68, %55, %23, %16
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @uiomove(i32*, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
