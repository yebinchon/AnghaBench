; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmsmoother.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmsmoother.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_10__, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@PSM_FINGER_FUZZY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"smoother%d: ---\0A\00", align 1
@SYNAPTICS_PACKETQUEUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"smoother%d: ipacket: [%d, %d], %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"smoother%d: cursor[%d]: x=%d, y=%d, dx=%d, dy=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"smoother%d: peer=%d, len=%d, weight=%d/%d, div=%d/%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"smoother%d: avg_dx~=%d, avg_dy~=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"smoother%d: [%d, %d] -> [%d, %d]\0A\00", align 1
@MOUSE_BUTTON5DOWN = common dso_local global i32 0, align 4
@MOUSE_BUTTON4DOWN = common dso_local global i32 0, align 4
@MOUSE_BUTTON6DOWN = common dso_local global i32 0, align 4
@MOUSE_BUTTON7DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*, %struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32*, i32*)* @psmsmoother to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmsmoother(%struct.psm_softc* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_12__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.psm_softc*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %57 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %58 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %61
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %13, align 8
  %63 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %64 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %63, i32 0, i32 1
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %14, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %69 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %67, %71
  br i1 %72, label %73, label %682

73:                                               ; preds = %6
  %74 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %75 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %24, align 4
  %78 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %79 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %25, align 4
  %82 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %83 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %26, align 4
  %86 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %87 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %27, align 4
  %90 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %91 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %28, align 4
  %94 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %95 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %29, align 4
  %98 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %99 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %30, align 4
  %102 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %103 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %31, align 4
  %106 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %107 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %32, align 4
  %110 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %111 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %33, align 4
  %114 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %115 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %34, align 4
  %118 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %119 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %35, align 4
  %122 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %123 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %36, align 4
  %126 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %127 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 14
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %37, align 4
  %130 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %131 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 15
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %38, align 4
  %134 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %135 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 16
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %39, align 4
  %138 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %139 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %40, align 4
  %142 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %143 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 18
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %41, align 4
  %146 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %147 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 19
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %42, align 4
  %150 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %151 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 20
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %43, align 4
  %154 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %155 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 21
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %44, align 4
  %158 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %159 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 22
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %45, align 4
  %162 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %163 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 23
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %46, align 4
  %166 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %167 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 24
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %47, align 4
  %170 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %171 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 25
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %56, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @PSM_FINGER_FUZZY, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %55, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %15, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %29, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %73
  %191 = load i32, i32* %29, align 4
  store i32 %191, i32* %15, align 4
  br label %203

192:                                              ; preds = %73
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %46, align 4
  %195 = load i32, i32* %27, align 4
  %196 = sub nsw i32 %194, %195
  %197 = icmp sge i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load i32, i32* %46, align 4
  %200 = load i32, i32* %27, align 4
  %201 = sub nsw i32 %199, %200
  store i32 %201, i32* %15, align 4
  br label %202

202:                                              ; preds = %198, %192
  br label %203

203:                                              ; preds = %202, %190
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %28, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* %28, align 4
  store i32 %208, i32* %16, align 4
  br label %220

209:                                              ; preds = %203
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %47, align 4
  %212 = load i32, i32* %26, align 4
  %213 = sub nsw i32 %211, %212
  %214 = icmp sge i32 %210, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load i32, i32* %47, align 4
  %217 = load i32, i32* %26, align 4
  %218 = sub nsw i32 %216, %217
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %215, %209
  br label %220

220:                                              ; preds = %219, %207
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %251

225:                                              ; preds = %220
  %226 = load i32, i32* @LOG_DEBUG, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @VLOG(i32 3, i32 %227)
  %229 = load i32, i32* %15, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %235 = load i64, i64* @SYNAPTICS_PACKETQUEUE, align 8
  %236 = trunc i64 %235 to i32
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 4
  store i64 0, i64* %240, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 5
  store i32 0, i32* %242, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 6
  store i32 0, i32* %244, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 7
  store i32 0, i32* %246, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 8
  store i32 0, i32* %248, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  br label %275

251:                                              ; preds = %220
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %15, align 4
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 10
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %257, align 8
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %255, %263
  store i32 %264, i32* %20, align 4
  %265 = load i32, i32* %16, align 4
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 10
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %265, %273
  store i32 %274, i32* %21, align 4
  br label %275

275:                                              ; preds = %251, %225
  %276 = load i32, i32* @LOG_DEBUG, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @VLOG(i32 3, i32 %285)
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %289, 1
  %291 = call i32 @SYNAPTICS_QUEUE_CURSOR(i32 %290)
  store i32 %291, i32* %17, align 4
  %292 = load i32, i32* %15, align 4
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 10
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  store i32 %292, i32* %299, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 10
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %302, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  store i32 %300, i32* %307, align 4
  %308 = load i32, i32* %17, align 4
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @SYNAPTICS_PACKETQUEUE, align 8
  %315 = icmp slt i64 %313, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %275
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 4
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %316, %275
  %322 = load i32, i32* @LOG_DEBUG, align 4
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %16, align 4
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* %21, align 4
  %329 = call i32 @VLOG(i32 5, i32 %328)
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp slt i64 %332, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %321
  br label %685

338:                                              ; preds = %321
  %339 = load i32, i32* %38, align 4
  store i32 %339, i32* %50, align 4
  store i32 %339, i32* %49, align 4
  %340 = load i32, i32* %41, align 4
  store i32 %340, i32* %52, align 4
  store i32 %340, i32* %51, align 4
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %347 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 26
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %40, align 4
  %350 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %351 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 27
  %353 = load i32, i32* %352, align 8
  store i32 %353, i32* %52, align 4
  store i32 %353, i32* %51, align 4
  br label %393

354:                                              ; preds = %338
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* %33, align 4
  %357 = icmp sle i32 %355, %356
  br i1 %357, label %364, label %358

358:                                              ; preds = %354
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* %46, align 4
  %361 = load i32, i32* %31, align 4
  %362 = sub nsw i32 %360, %361
  %363 = icmp sge i32 %359, %362
  br i1 %363, label %364, label %373

364:                                              ; preds = %358, %354
  %365 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %366 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 28
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %49, align 4
  %369 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %370 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 29
  %372 = load i32, i32* %371, align 8
  store i32 %372, i32* %51, align 4
  br label %373

373:                                              ; preds = %364, %358
  %374 = load i32, i32* %16, align 4
  %375 = load i32, i32* %32, align 4
  %376 = icmp sle i32 %374, %375
  br i1 %376, label %383, label %377

377:                                              ; preds = %373
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %47, align 4
  %380 = load i32, i32* %30, align 4
  %381 = sub nsw i32 %379, %380
  %382 = icmp sge i32 %378, %381
  br i1 %382, label %383, label %392

383:                                              ; preds = %377, %373
  %384 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %385 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 28
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %50, align 4
  %388 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %389 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 29
  %391 = load i32, i32* %390, align 8
  store i32 %391, i32* %52, align 4
  br label %392

392:                                              ; preds = %383, %377
  br label %393

393:                                              ; preds = %392, %345
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = trunc i64 %396 to i32
  %398 = load i32, i32* %35, align 4
  %399 = call i32 @imin(i32 %397, i32 %398)
  store i32 %399, i32* %19, align 4
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* %19, align 4
  %402 = add nsw i32 %400, %401
  %403 = sub nsw i32 %402, 1
  %404 = call i32 @SYNAPTICS_QUEUE_CURSOR(i32 %403)
  store i32 %404, i32* %18, align 4
  %405 = load i32, i32* %15, align 4
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 10
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %407, align 8
  %409 = load i32, i32* %18, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %405, %413
  %415 = call i32 @abs(i32 %414) #3
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %22, align 4
  %417 = load i32, i32* %16, align 4
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 10
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %419, align 8
  %421 = load i32, i32* %18, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 %417, %425
  %427 = call i32 @abs(i32 %426) #3
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %23, align 4
  %429 = load i32, i32* %22, align 4
  %430 = load i32, i32* %22, align 4
  %431 = mul nsw i32 %429, %430
  %432 = load i32, i32* %23, align 4
  %433 = load i32, i32* %23, align 4
  %434 = mul nsw i32 %432, %433
  %435 = add nsw i32 %431, %434
  store i32 %435, i32* %48, align 4
  %436 = load i32, i32* %49, align 4
  %437 = load i32, i32* %39, align 4
  %438 = load i32, i32* %49, align 4
  %439 = mul nsw i32 %437, %438
  %440 = load i32, i32* %48, align 4
  %441 = sdiv i32 %439, %440
  %442 = call i32 @imin(i32 %436, i32 %441)
  store i32 %442, i32* %49, align 4
  %443 = load i32, i32* %50, align 4
  %444 = load i32, i32* %39, align 4
  %445 = load i32, i32* %50, align 4
  %446 = mul nsw i32 %444, %445
  %447 = load i32, i32* %48, align 4
  %448 = sdiv i32 %446, %447
  %449 = call i32 @imin(i32 %443, i32 %448)
  store i32 %449, i32* %50, align 4
  %450 = load i32, i32* %22, align 4
  %451 = load i32, i32* %23, align 4
  %452 = add nsw i32 %450, %451
  %453 = sdiv i32 %452, 2
  store i32 %453, i32* %48, align 4
  %454 = load i32, i32* %42, align 4
  %455 = load i32, i32* %51, align 4
  %456 = mul nsw i32 %454, %455
  %457 = load i32, i32* %48, align 4
  %458 = sdiv i32 %456, %457
  store i32 %458, i32* %53, align 4
  %459 = load i32, i32* %51, align 4
  %460 = load i32, i32* %53, align 4
  %461 = call i32 @imin(i32 %459, i32 %460)
  store i32 %461, i32* %53, align 4
  %462 = load i32, i32* %40, align 4
  %463 = load i32, i32* %53, align 4
  %464 = call i32 @imax(i32 %462, i32 %463)
  store i32 %464, i32* %53, align 4
  %465 = load i32, i32* %42, align 4
  %466 = load i32, i32* %52, align 4
  %467 = mul nsw i32 %465, %466
  %468 = load i32, i32* %48, align 4
  %469 = sdiv i32 %467, %468
  store i32 %469, i32* %54, align 4
  %470 = load i32, i32* %52, align 4
  %471 = load i32, i32* %54, align 4
  %472 = call i32 @imin(i32 %470, i32 %471)
  store i32 %472, i32* %54, align 4
  %473 = load i32, i32* %40, align 4
  %474 = load i32, i32* %54, align 4
  %475 = call i32 @imax(i32 %473, i32 %474)
  store i32 %475, i32* %54, align 4
  %476 = load i32, i32* @LOG_DEBUG, align 4
  %477 = load i32, i32* %9, align 4
  %478 = load i32, i32* %18, align 4
  %479 = load i32, i32* %48, align 4
  %480 = load i32, i32* %49, align 4
  %481 = load i32, i32* %50, align 4
  %482 = load i32, i32* %53, align 4
  %483 = load i32, i32* %54, align 4
  %484 = call i32 @VLOG(i32 3, i32 %483)
  %485 = load i32, i32* %37, align 4
  %486 = load i32, i32* %20, align 4
  %487 = mul nsw i32 %485, %486
  %488 = load i32, i32* %36, align 4
  %489 = mul nsw i32 %487, %488
  %490 = load i32, i32* %49, align 4
  %491 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 5
  %493 = load i32, i32* %492, align 8
  %494 = mul nsw i32 %490, %493
  %495 = add nsw i32 %489, %494
  %496 = load i32, i32* %37, align 4
  %497 = load i32, i32* %49, align 4
  %498 = add nsw i32 %496, %497
  %499 = sdiv i32 %495, %498
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 5
  store i32 %499, i32* %501, align 8
  %502 = load i32, i32* %37, align 4
  %503 = load i32, i32* %21, align 4
  %504 = mul nsw i32 %502, %503
  %505 = load i32, i32* %36, align 4
  %506 = mul nsw i32 %504, %505
  %507 = load i32, i32* %50, align 4
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 6
  %510 = load i32, i32* %509, align 4
  %511 = mul nsw i32 %507, %510
  %512 = add nsw i32 %506, %511
  %513 = load i32, i32* %37, align 4
  %514 = load i32, i32* %50, align 4
  %515 = add nsw i32 %513, %514
  %516 = sdiv i32 %512, %515
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 6
  store i32 %516, i32* %518, align 4
  %519 = load i32, i32* @LOG_DEBUG, align 4
  %520 = load i32, i32* %9, align 4
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 5
  %523 = load i32, i32* %522, align 8
  %524 = load i32, i32* %36, align 4
  %525 = sdiv i32 %523, %524
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 6
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %36, align 4
  %530 = sdiv i32 %528, %529
  %531 = call i32 @VLOG(i32 5, i32 %530)
  %532 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %532, i32 0, i32 5
  %534 = load i32, i32* %533, align 8
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 7
  %537 = load i32, i32* %536, align 8
  %538 = add nsw i32 %537, %534
  store i32 %538, i32* %536, align 8
  %539 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %540 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i32 0, i32 7
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* %53, align 4
  %543 = load i32, i32* %36, align 4
  %544 = mul nsw i32 %542, %543
  %545 = sdiv i32 %541, %544
  store i32 %545, i32* %22, align 4
  %546 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 7
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* %53, align 4
  %550 = load i32, i32* %36, align 4
  %551 = mul nsw i32 %549, %550
  %552 = srem i32 %548, %551
  %553 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %554 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %553, i32 0, i32 7
  store i32 %552, i32* %554, align 8
  %555 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %556 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %555, i32 0, i32 6
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 8
  %560 = load i32, i32* %559, align 4
  %561 = add nsw i32 %560, %557
  store i32 %561, i32* %559, align 4
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 8
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* %54, align 4
  %566 = load i32, i32* %36, align 4
  %567 = mul nsw i32 %565, %566
  %568 = sdiv i32 %564, %567
  store i32 %568, i32* %23, align 4
  %569 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 8
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %54, align 4
  %573 = load i32, i32* %36, align 4
  %574 = mul nsw i32 %572, %573
  %575 = srem i32 %571, %574
  %576 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %577 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %576, i32 0, i32 8
  store i32 %575, i32* %577, align 4
  %578 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 8
  switch i32 %580, label %678 [
    i32 0, label %581
    i32 1, label %604
    i32 2, label %641
  ]

581:                                              ; preds = %393
  %582 = load i32, i32* %55, align 4
  %583 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i32 0, i32 9
  %585 = load i32, i32* %584, align 8
  %586 = icmp eq i32 %582, %585
  br i1 %586, label %587, label %596

587:                                              ; preds = %581
  %588 = load i32, i32* %22, align 4
  %589 = load i32*, i32** %11, align 8
  %590 = load i32, i32* %589, align 4
  %591 = add nsw i32 %590, %588
  store i32 %591, i32* %589, align 4
  %592 = load i32, i32* %23, align 4
  %593 = load i32*, i32** %12, align 8
  %594 = load i32, i32* %593, align 4
  %595 = add nsw i32 %594, %592
  store i32 %595, i32* %593, align 4
  br label %596

596:                                              ; preds = %587, %581
  %597 = load i32, i32* @LOG_DEBUG, align 4
  %598 = load i32, i32* %9, align 4
  %599 = load i32, i32* %20, align 4
  %600 = load i32, i32* %21, align 4
  %601 = load i32, i32* %22, align 4
  %602 = load i32, i32* %23, align 4
  %603 = call i32 @VLOG(i32 3, i32 %602)
  br label %678

604:                                              ; preds = %393
  %605 = load i32, i32* %23, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %640

607:                                              ; preds = %604
  %608 = load i32, i32* %45, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %626

610:                                              ; preds = %607
  %611 = load i32, i32* %56, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %626

613:                                              ; preds = %610
  %614 = load i32, i32* %23, align 4
  %615 = icmp sgt i32 %614, 0
  br i1 %615, label %616, label %618

616:                                              ; preds = %613
  %617 = load i32, i32* @MOUSE_BUTTON5DOWN, align 4
  br label %620

618:                                              ; preds = %613
  %619 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %620

620:                                              ; preds = %618, %616
  %621 = phi i32 [ %617, %616 ], [ %619, %618 ]
  %622 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %623 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = or i32 %624, %621
  store i32 %625, i32* %623, align 4
  br label %639

626:                                              ; preds = %610, %607
  %627 = load i32, i32* %23, align 4
  %628 = icmp sgt i32 %627, 0
  br i1 %628, label %629, label %631

629:                                              ; preds = %626
  %630 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %633

631:                                              ; preds = %626
  %632 = load i32, i32* @MOUSE_BUTTON5DOWN, align 4
  br label %633

633:                                              ; preds = %631, %629
  %634 = phi i32 [ %630, %629 ], [ %632, %631 ]
  %635 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %636 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 4
  %638 = or i32 %637, %634
  store i32 %638, i32* %636, align 4
  br label %639

639:                                              ; preds = %633, %620
  br label %640

640:                                              ; preds = %639, %604
  br label %678

641:                                              ; preds = %393
  %642 = load i32, i32* %22, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %677

644:                                              ; preds = %641
  %645 = load i32, i32* %45, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %663

647:                                              ; preds = %644
  %648 = load i32, i32* %56, align 4
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %663

650:                                              ; preds = %647
  %651 = load i32, i32* %22, align 4
  %652 = icmp sgt i32 %651, 0
  br i1 %652, label %653, label %655

653:                                              ; preds = %650
  %654 = load i32, i32* @MOUSE_BUTTON6DOWN, align 4
  br label %657

655:                                              ; preds = %650
  %656 = load i32, i32* @MOUSE_BUTTON7DOWN, align 4
  br label %657

657:                                              ; preds = %655, %653
  %658 = phi i32 [ %654, %653 ], [ %656, %655 ]
  %659 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %660 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = or i32 %661, %658
  store i32 %662, i32* %660, align 4
  br label %676

663:                                              ; preds = %647, %644
  %664 = load i32, i32* %22, align 4
  %665 = icmp sgt i32 %664, 0
  br i1 %665, label %666, label %668

666:                                              ; preds = %663
  %667 = load i32, i32* @MOUSE_BUTTON7DOWN, align 4
  br label %670

668:                                              ; preds = %663
  %669 = load i32, i32* @MOUSE_BUTTON6DOWN, align 4
  br label %670

670:                                              ; preds = %668, %666
  %671 = phi i32 [ %667, %666 ], [ %669, %668 ]
  %672 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %673 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 4
  %675 = or i32 %674, %671
  store i32 %675, i32* %673, align 4
  br label %676

676:                                              ; preds = %670, %657
  br label %677

677:                                              ; preds = %676, %641
  br label %678

678:                                              ; preds = %393, %677, %640, %596
  %679 = load i32, i32* %55, align 4
  %680 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %681 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %680, i32 0, i32 9
  store i32 %679, i32* %681, align 8
  br label %685

682:                                              ; preds = %6
  %683 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %684 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %683, i32 0, i32 0
  store i32 0, i32* %684, align 8
  br label %685

685:                                              ; preds = %337, %682, %678
  ret void
}

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @SYNAPTICS_QUEUE_CURSOR(i32) #1

declare dso_local i32 @imin(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @imax(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
