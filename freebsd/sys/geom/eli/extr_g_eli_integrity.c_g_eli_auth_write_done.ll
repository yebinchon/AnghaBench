; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_integrity.c_g_eli_auth_write_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_integrity.c_g_eli_auth_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.g_eli_softc = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.g_consumer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.g_eli_softc* }
%struct.bio = type { i32, i32, i64, i32, i32, i8*, %struct.TYPE_8__*, i32*, i32*, %struct.bio* }

@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Crypto WRITE request done (%d/%d).\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Crypto WRITE request failed (%d/%d) error=%d.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Crypto WRITE request failed (error=%d).\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@g_eli_write_done = common dso_local global i8* null, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @g_eli_auth_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_auth_write_done(%struct.cryptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca %struct.g_eli_softc*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  %10 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %11 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EAGAIN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %17 = call i64 @g_eli_crypto_rerun(%struct.cryptop* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %252

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %23 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.bio*
  store %struct.bio* %25, %struct.bio** %6, align 8
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %31 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.bio*, %struct.bio** %6, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, i32, i32, ...) @G_ELI_DEBUG(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %64

42:                                               ; preds = %21
  %43 = load %struct.bio*, %struct.bio** %6, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bio*, %struct.bio** %6, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %50 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, i32, i32, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i64 %51)
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %59 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bio*, %struct.bio** %6, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %42
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.bio*, %struct.bio** %6, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 6
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.g_eli_softc*, %struct.g_eli_softc** %70, align 8
  store %struct.g_eli_softc* %71, %struct.g_eli_softc** %4, align 8
  %72 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %73 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %74 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @g_eli_key_drop(%struct.g_eli_softc* %72, i32 %77)
  %79 = load %struct.bio*, %struct.bio** %6, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bio*, %struct.bio** %6, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %252

87:                                               ; preds = %64
  %88 = load %struct.bio*, %struct.bio** %6, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %87
  %93 = load %struct.bio*, %struct.bio** %6, align 8
  %94 = load %struct.bio*, %struct.bio** %6, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, %struct.bio*, i8*, ...) @G_ELI_LOGREQ(i32 0, %struct.bio* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %96)
  %98 = load %struct.bio*, %struct.bio** %6, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @M_ELI, align 4
  %102 = call i32 @free(i32* %100, i32 %101)
  %103 = load %struct.bio*, %struct.bio** %6, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 8
  store i32* null, i32** %104, align 8
  %105 = load %struct.bio*, %struct.bio** %6, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 9
  %107 = load %struct.bio*, %struct.bio** %106, align 8
  store %struct.bio* %107, %struct.bio** %7, align 8
  %108 = load %struct.bio*, %struct.bio** %6, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 9
  store %struct.bio* null, %struct.bio** %109, align 8
  %110 = load %struct.bio*, %struct.bio** %7, align 8
  %111 = call i32 @g_destroy_bio(%struct.bio* %110)
  %112 = load %struct.bio*, %struct.bio** %6, align 8
  %113 = load %struct.bio*, %struct.bio** %6, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @g_io_deliver(%struct.bio* %112, i64 %115)
  %117 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %118 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %117, i32 0, i32 2
  %119 = call i32 @atomic_subtract_int(i32* %118, i32 1)
  store i32 0, i32* %2, align 4
  br label %252

120:                                              ; preds = %87
  %121 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %122 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call %struct.g_consumer* @LIST_FIRST(i32* %124)
  store %struct.g_consumer* %125, %struct.g_consumer** %5, align 8
  %126 = load %struct.bio*, %struct.bio** %6, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 9
  %128 = load %struct.bio*, %struct.bio** %127, align 8
  store %struct.bio* %128, %struct.bio** %7, align 8
  %129 = load %struct.bio*, %struct.bio** %6, align 8
  %130 = getelementptr inbounds %struct.bio, %struct.bio* %129, i32 0, i32 9
  store %struct.bio* null, %struct.bio** %130, align 8
  %131 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %132 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load %struct.bio*, %struct.bio** %7, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 6
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %135, align 8
  %136 = load i8*, i8** @g_eli_write_done, align 8
  %137 = load %struct.bio*, %struct.bio** %7, align 8
  %138 = getelementptr inbounds %struct.bio, %struct.bio* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.bio*, %struct.bio** %6, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.bio*, %struct.bio** %6, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 6
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %141, %146
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %150 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %154 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %152, %157
  store i32 %158, i32* %9, align 4
  %159 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %160 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load %struct.bio*, %struct.bio** %7, align 8
  %167 = getelementptr inbounds %struct.bio, %struct.bio* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load %struct.bio*, %struct.bio** %6, align 8
  %169 = getelementptr inbounds %struct.bio, %struct.bio* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.bio*, %struct.bio** %6, align 8
  %172 = getelementptr inbounds %struct.bio, %struct.bio* %171, i32 0, i32 6
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sdiv i32 %170, %175
  %177 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %178 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = load %struct.bio*, %struct.bio** %7, align 8
  %182 = getelementptr inbounds %struct.bio, %struct.bio* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 4
  %183 = load %struct.bio*, %struct.bio** %6, align 8
  %184 = getelementptr inbounds %struct.bio, %struct.bio* %183, i32 0, i32 8
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.bio*, %struct.bio** %7, align 8
  %187 = getelementptr inbounds %struct.bio, %struct.bio* %186, i32 0, i32 7
  store i32* %185, i32** %187, align 8
  store %struct.bio* null, %struct.bio** %8, align 8
  %188 = load %struct.bio*, %struct.bio** %7, align 8
  %189 = getelementptr inbounds %struct.bio, %struct.bio* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @MAXPHYS, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %229

193:                                              ; preds = %120
  %194 = load %struct.bio*, %struct.bio** %6, align 8
  %195 = call %struct.bio* @g_duplicate_bio(%struct.bio* %194)
  store %struct.bio* %195, %struct.bio** %8, align 8
  %196 = load %struct.bio*, %struct.bio** %7, align 8
  %197 = getelementptr inbounds %struct.bio, %struct.bio* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @MAXPHYS, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load %struct.bio*, %struct.bio** %8, align 8
  %202 = getelementptr inbounds %struct.bio, %struct.bio* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load %struct.bio*, %struct.bio** %7, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 7
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @MAXPHYS, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load %struct.bio*, %struct.bio** %8, align 8
  %210 = getelementptr inbounds %struct.bio, %struct.bio* %209, i32 0, i32 7
  store i32* %208, i32** %210, align 8
  %211 = load %struct.bio*, %struct.bio** %7, align 8
  %212 = getelementptr inbounds %struct.bio, %struct.bio* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @MAXPHYS, align 4
  %215 = add nsw i32 %213, %214
  %216 = load %struct.bio*, %struct.bio** %8, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %219 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = load %struct.bio*, %struct.bio** %8, align 8
  %222 = getelementptr inbounds %struct.bio, %struct.bio* %221, i32 0, i32 6
  store %struct.TYPE_8__* %220, %struct.TYPE_8__** %222, align 8
  %223 = load i8*, i8** @g_eli_write_done, align 8
  %224 = load %struct.bio*, %struct.bio** %8, align 8
  %225 = getelementptr inbounds %struct.bio, %struct.bio* %224, i32 0, i32 5
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* @MAXPHYS, align 4
  %227 = load %struct.bio*, %struct.bio** %7, align 8
  %228 = getelementptr inbounds %struct.bio, %struct.bio* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %193, %120
  %230 = load %struct.bio*, %struct.bio** %7, align 8
  %231 = call i32 (i32, %struct.bio*, i8*, ...) @G_ELI_LOGREQ(i32 2, %struct.bio* %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %232 = load %struct.bio*, %struct.bio** %6, align 8
  %233 = getelementptr inbounds %struct.bio, %struct.bio* %232, i32 0, i32 0
  store i32 0, i32* %233, align 8
  %234 = load %struct.bio*, %struct.bio** %8, align 8
  %235 = icmp ne %struct.bio* %234, null
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 2, i32 1
  %238 = load %struct.bio*, %struct.bio** %6, align 8
  %239 = getelementptr inbounds %struct.bio, %struct.bio* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.bio*, %struct.bio** %7, align 8
  %241 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %242 = call i32 @g_io_request(%struct.bio* %240, %struct.g_consumer* %241)
  %243 = load %struct.bio*, %struct.bio** %8, align 8
  %244 = icmp ne %struct.bio* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %229
  %246 = load %struct.bio*, %struct.bio** %8, align 8
  %247 = call i32 (i32, %struct.bio*, i8*, ...) @G_ELI_LOGREQ(i32 2, %struct.bio* %246, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %248 = load %struct.bio*, %struct.bio** %8, align 8
  %249 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %250 = call i32 @g_io_request(%struct.bio* %248, %struct.g_consumer* %249)
  br label %251

251:                                              ; preds = %245, %229
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %251, %92, %86, %19
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i64 @g_eli_crypto_rerun(%struct.cryptop*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @g_eli_key_drop(%struct.g_eli_softc*, i32) #1

declare dso_local i32 @G_ELI_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local %struct.bio* @g_duplicate_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
