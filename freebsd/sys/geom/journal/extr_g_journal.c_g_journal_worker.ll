; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32, i64, i64, i64, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, %struct.g_geom*, %struct.TYPE_4__*, i32, %struct.TYPE_4__* }
%struct.g_geom = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.g_provider = type { i32, i32 }
%struct.bio = type { i32, i64, i64, i64 }

@curthread = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@GJF_DEVICE_CLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Journal %s clean.\00", align 1
@GJ_FLUSH_JOURNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"BIO_FLUSH supported by %s.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"BIO_FLUSH not supported by %s.\00", align 1
@GJ_FLUSH_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%s.journal\00", align 1
@time_second = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"root_mount_rel %p\00", align 1
@GJ_BIO_MASK = common dso_local global i32 0, align 4
@GJF_DEVICE_SWITCH = common dso_local global i32 0, align 4
@GJF_DEVICE_DESTROY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Shutting down worker thread for %s.\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"WRITE on SWITCH\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Invalid bio_cmd (%d).\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Invalid bio (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_journal_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_journal_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @curthread, align 4
  %10 = call i32 @thread_lock(i32 %9)
  %11 = load i32, i32* @curthread, align 4
  %12 = load i32, i32* @PRIBIO, align 4
  %13 = call i32 @sched_prio(i32 %11, i32 %12)
  %14 = load i32, i32* @curthread, align 4
  %15 = call i32 @thread_unlock(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.g_journal_softc*
  store %struct.g_journal_softc* %17, %struct.g_journal_softc** %3, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GJF_DEVICE_CLEAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %25, i32 0, i32 12
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %30 = call i32 @g_journal_initialize(%struct.g_journal_softc* %29)
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %33 = call i32 @g_journal_sync(%struct.g_journal_softc* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %36 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %35, i32 0, i32 15
  store i32 0, i32* %36, align 8
  %37 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %38 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %37, i32 0, i32 16
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i64 @g_io_flush(%struct.TYPE_4__* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i32, i32* @GJ_FLUSH_JOURNAL, align 4
  %44 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %45 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %49 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %48, i32 0, i32 16
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  br label %65

56:                                               ; preds = %34
  %57 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %58 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %57, i32 0, i32 16
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  br label %65

65:                                               ; preds = %56, %42
  %66 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %67 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %66, i32 0, i32 16
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %70 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %69, i32 0, i32 14
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %68, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %65
  %74 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %75 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %74, i32 0, i32 14
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i64 @g_io_flush(%struct.TYPE_4__* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load i32, i32* @GJ_FLUSH_DATA, align 4
  %81 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %82 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %81, i32 0, i32 15
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %86 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %85, i32 0, i32 14
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %91)
  br label %102

93:                                               ; preds = %73
  %94 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %95 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %94, i32 0, i32 14
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* %100)
  br label %102

102:                                              ; preds = %93, %79
  br label %103

103:                                              ; preds = %102, %65
  %104 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %105 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %104, i32 0, i32 13
  %106 = load %struct.g_geom*, %struct.g_geom** %105, align 8
  store %struct.g_geom* %106, %struct.g_geom** %4, align 8
  %107 = call i32 (...) @g_topology_lock()
  %108 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %109 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %110 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %109, i32 0, i32 12
  %111 = load i32*, i32** %110, align 8
  %112 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %111)
  store %struct.g_provider* %112, %struct.g_provider** %5, align 8
  %113 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %114 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %117 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %119 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %122 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %124 = call i32 @g_error_provider(%struct.g_provider* %123, i32 0)
  %125 = call i32 (...) @g_topology_unlock()
  %126 = load i32, i32* @time_second, align 4
  store i32 %126, i32* %7, align 4
  %127 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %128 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %103
  %132 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %133 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %134)
  %136 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %137 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %136, i32 0, i32 9
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @root_mount_rel(i32* %138)
  %140 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %141 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %140, i32 0, i32 9
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %131, %103
  br label %143

143:                                              ; preds = %356, %251, %220, %192, %142
  %144 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %145 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %144, i32 0, i32 4
  %146 = call i32 @mtx_lock(i32* %145)
  %147 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %148 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %147, i32 0, i32 5
  %149 = call %struct.bio* @bioq_first(i32* %148)
  store %struct.bio* %149, %struct.bio** %6, align 8
  %150 = load %struct.bio*, %struct.bio** %6, align 8
  %151 = icmp ne %struct.bio* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load %struct.bio*, %struct.bio** %6, align 8
  %154 = getelementptr inbounds %struct.bio, %struct.bio* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GJ_BIO_MASK, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %152, %143
  %159 = load %struct.bio*, %struct.bio** %6, align 8
  %160 = icmp eq %struct.bio* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %163 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %162, i32 0, i32 6
  %164 = call %struct.bio* @bioq_first(i32* %163)
  store %struct.bio* %164, %struct.bio** %6, align 8
  %165 = load %struct.bio*, %struct.bio** %6, align 8
  %166 = icmp ne %struct.bio* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 128, i32* %8, align 4
  br label %168

168:                                              ; preds = %167, %161
  br label %169

169:                                              ; preds = %168, %158
  %170 = load %struct.bio*, %struct.bio** %6, align 8
  %171 = icmp eq %struct.bio* %170, null
  br i1 %171, label %172, label %255

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %270, %172
  %174 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %175 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @GJF_DEVICE_SWITCH, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %173
  %181 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %182 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @GJF_DEVICE_DESTROY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %213

187:                                              ; preds = %180, %173
  %188 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %189 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %194 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %193, i32 0, i32 4
  %195 = call i32 @mtx_unlock(i32* %194)
  %196 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %197 = call i32 @g_journal_flush(%struct.g_journal_softc* %196)
  %198 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %199 = call i32 @g_journal_flush_send(%struct.g_journal_softc* %198)
  br label %143

200:                                              ; preds = %187
  %201 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %202 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %251

206:                                              ; preds = %200
  %207 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %208 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %251

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212, %180
  %214 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %215 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @GJF_DEVICE_SWITCH, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %213
  %221 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %222 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %221, i32 0, i32 4
  %223 = call i32 @mtx_unlock(i32* %222)
  %224 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %225 = call i32 @g_journal_switch(%struct.g_journal_softc* %224)
  %226 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %227 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %226, i32 0, i32 8
  %228 = call i32 @wakeup(i32** %227)
  br label %143

229:                                              ; preds = %213
  %230 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %231 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @GJF_DEVICE_DESTROY, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %229
  %237 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %238 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32* %239)
  %241 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %242 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %241, i32 0, i32 7
  store i32* null, i32** %242, align 8
  %243 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %244 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %243, i32 0, i32 7
  %245 = call i32 @wakeup(i32** %244)
  %246 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %247 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %246, i32 0, i32 4
  %248 = call i32 @mtx_unlock(i32* %247)
  %249 = call i32 @kproc_exit(i32 0)
  br label %250

250:                                              ; preds = %236, %229
  br label %251

251:                                              ; preds = %250, %211, %205
  %252 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @g_journal_wait(%struct.g_journal_softc* %252, i32 %253)
  br label %143

255:                                              ; preds = %169
  %256 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %257 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @GJF_DEVICE_SWITCH, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %255
  %263 = load i32, i32* %8, align 4
  %264 = icmp eq i32 %263, 128
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load %struct.bio*, %struct.bio** %6, align 8
  %267 = getelementptr inbounds %struct.bio, %struct.bio* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 132
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.bio*, %struct.bio** %6, align 8
  %272 = call i32 @GJ_LOGREQ(i32 2, %struct.bio* %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %173

273:                                              ; preds = %265, %262, %255
  %274 = load i32, i32* %8, align 4
  %275 = icmp eq i32 %274, 128
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %278 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %277, i32 0, i32 6
  %279 = load %struct.bio*, %struct.bio** %6, align 8
  %280 = call i32 @bioq_remove(i32* %278, %struct.bio* %279)
  br label %286

281:                                              ; preds = %273
  %282 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %283 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %282, i32 0, i32 5
  %284 = load %struct.bio*, %struct.bio** %6, align 8
  %285 = call i32 @bioq_remove(i32* %283, %struct.bio* %284)
  br label %286

286:                                              ; preds = %281, %276
  %287 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %288 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %287, i32 0, i32 4
  %289 = call i32 @mtx_unlock(i32* %288)
  %290 = load i32, i32* %8, align 4
  switch i32 %290, label %353 [
    i32 128, label %291
    i32 131, label %323
    i32 130, label %347
    i32 129, label %352
  ]

291:                                              ; preds = %286
  %292 = load %struct.bio*, %struct.bio** %6, align 8
  %293 = getelementptr inbounds %struct.bio, %struct.bio* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  switch i64 %294, label %316 [
    i64 133, label %295
    i64 132, label %309
  ]

295:                                              ; preds = %291
  %296 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %297 = load %struct.bio*, %struct.bio** %6, align 8
  %298 = load %struct.bio*, %struct.bio** %6, align 8
  %299 = getelementptr inbounds %struct.bio, %struct.bio* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.bio*, %struct.bio** %6, align 8
  %302 = getelementptr inbounds %struct.bio, %struct.bio* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.bio*, %struct.bio** %6, align 8
  %305 = getelementptr inbounds %struct.bio, %struct.bio* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %303, %306
  %308 = call i32 @g_journal_read(%struct.g_journal_softc* %296, %struct.bio* %297, i64 %300, i64 %307)
  br label %322

309:                                              ; preds = %291
  %310 = load i32, i32* @time_second, align 4
  store i32 %310, i32* %7, align 4
  %311 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %312 = load %struct.bio*, %struct.bio** %6, align 8
  %313 = call i32 @g_journal_add_request(%struct.g_journal_softc* %311, %struct.bio* %312)
  %314 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %315 = call i32 @g_journal_flush_send(%struct.g_journal_softc* %314)
  br label %322

316:                                              ; preds = %291
  %317 = load %struct.bio*, %struct.bio** %6, align 8
  %318 = getelementptr inbounds %struct.bio, %struct.bio* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %316, %309, %295
  br label %356

323:                                              ; preds = %286
  %324 = load %struct.bio*, %struct.bio** %6, align 8
  %325 = getelementptr inbounds %struct.bio, %struct.bio* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  switch i64 %326, label %340 [
    i64 133, label %327
    i64 132, label %335
  ]

327:                                              ; preds = %323
  %328 = load %struct.bio*, %struct.bio** %6, align 8
  %329 = call i32 @g_journal_copy_read_done(%struct.bio* %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %327
  %332 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %333 = call i32 @g_journal_copy_send(%struct.g_journal_softc* %332)
  br label %334

334:                                              ; preds = %331, %327
  br label %346

335:                                              ; preds = %323
  %336 = load %struct.bio*, %struct.bio** %6, align 8
  %337 = call i32 @g_journal_copy_write_done(%struct.bio* %336)
  %338 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %339 = call i32 @g_journal_copy_send(%struct.g_journal_softc* %338)
  br label %346

340:                                              ; preds = %323
  %341 = load %struct.bio*, %struct.bio** %6, align 8
  %342 = getelementptr inbounds %struct.bio, %struct.bio* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %340, %335, %334
  br label %356

347:                                              ; preds = %286
  %348 = load %struct.bio*, %struct.bio** %6, align 8
  %349 = call i32 @g_journal_flush_done(%struct.bio* %348)
  %350 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %351 = call i32 @g_journal_flush_send(%struct.g_journal_softc* %350)
  br label %356

352:                                              ; preds = %286
  br label %353

353:                                              ; preds = %286, %352
  %354 = load i32, i32* %8, align 4
  %355 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %353, %347, %346, %322
  br label %143
}

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32*) #1

declare dso_local i32 @g_journal_initialize(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_sync(%struct.g_journal_softc*) #1

declare dso_local i64 @g_io_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i32*) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @root_mount_rel(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_journal_flush(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_flush_send(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_switch(%struct.g_journal_softc*) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local i32 @g_journal_wait(%struct.g_journal_softc*, i32) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @g_journal_read(%struct.g_journal_softc*, %struct.bio*, i64, i64) #1

declare dso_local i32 @g_journal_add_request(%struct.g_journal_softc*, %struct.bio*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @g_journal_copy_read_done(%struct.bio*) #1

declare dso_local i32 @g_journal_copy_send(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_copy_write_done(%struct.bio*) #1

declare dso_local i32 @g_journal_flush_done(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
