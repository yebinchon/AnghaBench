; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.g_eli_softc = type { i32, i64, i32, i32, i64 }
%struct.g_eli_worker = type { i32, i64, %struct.g_eli_softc* }
%struct.bio = type { i64, i64 }

@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@PUSER = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Thread %s started.\00", align 1
@G_ELI_FLAG_DESTROY = common dso_local global i32 0, align 4
@w_next = common dso_local global i32 0, align 4
@M_ELI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Thread %s exiting.\00", align 1
@G_ELI_FLAG_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"inflight=%d\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"geli:inf\00", align 1
@hz = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"geli:suspend\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"g_eli_newsession() failed on resume (error=%d)\00", align 1
@TRUE = common dso_local global i64 0, align 8
@PDROP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"geli:w\00", align 1
@G_ELI_NEW_BIO = common dso_local global i64 0, align 8
@G_ELI_FLAG_AUTH = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@smp_started = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_eli_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_eli_softc*, align 8
  %4 = alloca %struct.g_eli_worker*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.g_eli_worker*
  store %struct.g_eli_worker* %8, %struct.g_eli_worker** %4, align 8
  %9 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %10 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %9, i32 0, i32 2
  %11 = load %struct.g_eli_softc*, %struct.g_eli_softc** %10, align 8
  store %struct.g_eli_softc* %11, %struct.g_eli_softc** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %13 = call i32 @thread_lock(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %15 = load i32, i32* @PUSER, align 4
  %16 = call i32 @sched_prio(%struct.TYPE_8__* %14, i32 %15)
  %17 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %18 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %23 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %24 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @mp_ncpus, align 4
  %27 = srem i32 %25, %26
  %28 = call i32 @sched_bind(%struct.TYPE_8__* %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %31 = call i32 @thread_unlock(%struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %229, %148, %29
  %39 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %40 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %39, i32 0, i32 2
  %41 = call i32 @mtx_lock(i32* %40)
  br label %42

42:                                               ; preds = %147, %91, %38
  %43 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %44 = call %struct.bio* @g_eli_takefirst(%struct.g_eli_softc* %43)
  store %struct.bio* %44, %struct.bio** %5, align 8
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = icmp eq %struct.bio* %45, null
  br i1 %46, label %47, label %154

47:                                               ; preds = %42
  %48 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %49 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @G_ELI_FLAG_DESTROY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %47
  %55 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %56 = call i32 @g_eli_cancel(%struct.g_eli_softc* %55)
  %57 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %58 = load i32, i32* @w_next, align 4
  %59 = call i32 @LIST_REMOVE(%struct.g_eli_worker* %57, i32 %58)
  %60 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %61 = call i32 @g_eli_freesession(%struct.g_eli_worker* %60)
  %62 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %63 = load i32, i32* @M_ELI, align 4
  %64 = call i32 @free(%struct.g_eli_worker* %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %72 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %71, i32 0, i32 3
  %73 = call i32 @wakeup(i32* %72)
  %74 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %75 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %74, i32 0, i32 2
  %76 = call i32 @mtx_unlock(i32* %75)
  %77 = call i32 @kproc_exit(i32 0)
  br label %78

78:                                               ; preds = %54, %47
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %81 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %148

86:                                               ; preds = %79
  %87 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %88 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %93 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %97 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %98 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %97, i32 0, i32 2
  %99 = load i32, i32* @PRIBIO, align 4
  %100 = load i32, i32* @hz, align 4
  %101 = sdiv i32 %100, 5
  %102 = call i32 @msleep(%struct.g_eli_softc* %96, i32* %98, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %42

103:                                              ; preds = %86
  %104 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %105 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %110 = call i32 @g_eli_freesession(%struct.g_eli_worker* %109)
  %111 = load i64, i64* @FALSE, align 8
  %112 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %113 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %116 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %115, i32 0, i32 3
  %117 = call i32 @wakeup(i32* %116)
  %118 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %119 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %120 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %119, i32 0, i32 2
  %121 = load i32, i32* @PRIBIO, align 4
  %122 = call i32 @msleep(%struct.g_eli_softc* %118, i32* %120, i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %123 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %124 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %114
  %128 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %129 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %127
  %135 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %136 = call i32 @g_eli_newsession(%struct.g_eli_worker* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @KASSERT(i32 %139, i8* %142)
  %144 = load i64, i64* @TRUE, align 8
  %145 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %146 = getelementptr inbounds %struct.g_eli_worker, %struct.g_eli_worker* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %134, %127, %114
  br label %42

148:                                              ; preds = %79
  %149 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %150 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %151 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %150, i32 0, i32 2
  %152 = load i32, i32* @PDROP, align 4
  %153 = call i32 @msleep(%struct.g_eli_softc* %149, i32* %151, i32 %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %38

154:                                              ; preds = %42
  %155 = load %struct.bio*, %struct.bio** %5, align 8
  %156 = getelementptr inbounds %struct.bio, %struct.bio* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @G_ELI_NEW_BIO, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %162 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %161, i32 0, i32 1
  %163 = call i32 @atomic_add_int(i64* %162, i32 1)
  br label %164

164:                                              ; preds = %160, %154
  %165 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %166 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %165, i32 0, i32 2
  %167 = call i32 @mtx_unlock(i32* %166)
  %168 = load %struct.bio*, %struct.bio** %5, align 8
  %169 = getelementptr inbounds %struct.bio, %struct.bio* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @G_ELI_NEW_BIO, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %213

173:                                              ; preds = %164
  %174 = load %struct.bio*, %struct.bio** %5, align 8
  %175 = getelementptr inbounds %struct.bio, %struct.bio* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %177 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %173
  %183 = load %struct.bio*, %struct.bio** %5, align 8
  %184 = getelementptr inbounds %struct.bio, %struct.bio* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @BIO_READ, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %190 = load %struct.bio*, %struct.bio** %5, align 8
  %191 = call i32 @g_eli_auth_read(%struct.g_eli_softc* %189, %struct.bio* %190)
  br label %196

192:                                              ; preds = %182
  %193 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %194 = load %struct.bio*, %struct.bio** %5, align 8
  %195 = call i32 @g_eli_auth_run(%struct.g_eli_worker* %193, %struct.bio* %194)
  br label %196

196:                                              ; preds = %192, %188
  br label %212

197:                                              ; preds = %173
  %198 = load %struct.bio*, %struct.bio** %5, align 8
  %199 = getelementptr inbounds %struct.bio, %struct.bio* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @BIO_READ, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %205 = load %struct.bio*, %struct.bio** %5, align 8
  %206 = call i32 @g_eli_crypto_read(%struct.g_eli_softc* %204, %struct.bio* %205, i32 1)
  br label %211

207:                                              ; preds = %197
  %208 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %209 = load %struct.bio*, %struct.bio** %5, align 8
  %210 = call i32 @g_eli_crypto_run(%struct.g_eli_worker* %208, %struct.bio* %209)
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %196
  br label %229

213:                                              ; preds = %164
  %214 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %215 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %222 = load %struct.bio*, %struct.bio** %5, align 8
  %223 = call i32 @g_eli_auth_run(%struct.g_eli_worker* %221, %struct.bio* %222)
  br label %228

224:                                              ; preds = %213
  %225 = load %struct.g_eli_worker*, %struct.g_eli_worker** %4, align 8
  %226 = load %struct.bio*, %struct.bio** %5, align 8
  %227 = call i32 @g_eli_crypto_run(%struct.g_eli_worker* %225, %struct.bio* %226)
  br label %228

228:                                              ; preds = %224, %220
  br label %229

229:                                              ; preds = %228, %212
  br label %38
}

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @sched_prio(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sched_bind(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @g_eli_takefirst(%struct.g_eli_softc*) #1

declare dso_local i32 @g_eli_cancel(%struct.g_eli_softc*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_eli_worker*, i32) #1

declare dso_local i32 @g_eli_freesession(%struct.g_eli_worker*) #1

declare dso_local i32 @free(%struct.g_eli_worker*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local i32 @msleep(%struct.g_eli_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @g_eli_newsession(%struct.g_eli_worker*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i32 @g_eli_auth_read(%struct.g_eli_softc*, %struct.bio*) #1

declare dso_local i32 @g_eli_auth_run(%struct.g_eli_worker*, %struct.bio*) #1

declare dso_local i32 @g_eli_crypto_read(%struct.g_eli_softc*, %struct.bio*, i32) #1

declare dso_local i32 @g_eli_crypto_run(%struct.g_eli_worker*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
