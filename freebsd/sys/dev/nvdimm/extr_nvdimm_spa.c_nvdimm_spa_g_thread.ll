; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_spa = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i64, i64 }
%struct.bio = type { i64, i32, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.uio = type { i32, i32, i32, i8*, i8*, i8*, %struct.iovec* }
%struct.iovec = type { i8*, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"spa_g\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_FLUSH = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i8* null, align 8
@UIO_WRITE = common dso_local global i8* null, align 8
@UIO_READ = common dso_local global i8* null, align 8
@curthread = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nvdimm_spa_g_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvdimm_spa_g_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_spa*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.uio, align 8
  %6 = alloca %struct.iovec, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.g_spa*
  store %struct.g_spa* %9, %struct.g_spa** %3, align 8
  br label %10

10:                                               ; preds = %255, %1
  %11 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %12 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %11, i32 0, i32 3
  %13 = call i32 @mtx_lock(i32* %12)
  br label %14

14:                                               ; preds = %42, %10
  %15 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %16 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %15, i32 0, i32 4
  %17 = call %struct.bio* @bioq_takefirst(i32* %16)
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %23 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %22, i32 0, i32 4
  %24 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %25 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %24, i32 0, i32 3
  %26 = load i32, i32* @PRIBIO, align 4
  %27 = call i32 @msleep(i32* %23, i32* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %29 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %21
  %33 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %34 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %36 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %35, i32 0, i32 4
  %37 = call i32 @wakeup(i32* %36)
  %38 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %39 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %38, i32 0, i32 3
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = call i32 @kproc_exit(i32 0)
  br label %42

42:                                               ; preds = %32, %21
  br label %14

43:                                               ; preds = %20
  %44 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %45 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %44, i32 0, i32 3
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BIO_READ, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BIO_WRITE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BIO_FLUSH, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %65, i32* %7, align 4
  br label %255

66:                                               ; preds = %58, %52, %43
  store i32 0, i32* %7, align 4
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BIO_FLUSH, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %66
  %73 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %74 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %81 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %86 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @pmap_large_map_wb(i32* %84, i64 %89)
  br label %114

91:                                               ; preds = %72
  %92 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %93 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %98 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %103 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %101, %106
  %108 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %109 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pmap_flush_cache_phys_range(i64 %96, i64 %107, i32 %112)
  br label %114

114:                                              ; preds = %91, %79
  br label %255

115:                                              ; preds = %66
  %116 = load %struct.bio*, %struct.bio** %4, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BIO_UNMAPPED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %201

122:                                              ; preds = %115
  %123 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %124 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %186

129:                                              ; preds = %122
  %130 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %131 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = load %struct.bio*, %struct.bio** %4, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 0
  store i8* %140, i8** %141, align 8
  %142 = load %struct.bio*, %struct.bio** %4, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 1
  store i32 %144, i32* %145, align 8
  %146 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 6
  store %struct.iovec* %6, %struct.iovec** %146, align 8
  %147 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.bio*, %struct.bio** %4, align 8
  %149 = getelementptr inbounds %struct.bio, %struct.bio* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 2
  store i32 %150, i32* %151, align 8
  %152 = load %struct.bio*, %struct.bio** %4, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load i8*, i8** @UIO_SYSSPACE, align 8
  %157 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 5
  store i8* %156, i8** %157, align 8
  %158 = load %struct.bio*, %struct.bio** %4, align 8
  %159 = getelementptr inbounds %struct.bio, %struct.bio* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @BIO_READ, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %129
  %164 = load i8*, i8** @UIO_WRITE, align 8
  br label %167

165:                                              ; preds = %129
  %166 = load i8*, i8** @UIO_READ, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i8* [ %164, %163 ], [ %166, %165 ]
  %169 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 4
  store i8* %168, i8** %169, align 8
  %170 = load i8*, i8** @curthread, align 8
  %171 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 3
  store i8* %170, i8** %171, align 8
  %172 = load %struct.bio*, %struct.bio** %4, align 8
  %173 = getelementptr inbounds %struct.bio, %struct.bio* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.bio*, %struct.bio** %4, align 8
  %176 = getelementptr inbounds %struct.bio, %struct.bio* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.bio*, %struct.bio** %4, align 8
  %179 = getelementptr inbounds %struct.bio, %struct.bio* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @uiomove_fromphys(i32 %174, i32 %177, i32 %180, %struct.uio* %5)
  store i32 %181, i32* %7, align 4
  %182 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.bio*, %struct.bio** %4, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  br label %200

186:                                              ; preds = %122
  %187 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %188 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %187, i32 0, i32 2
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = load %struct.bio*, %struct.bio** %4, align 8
  %191 = load %struct.bio*, %struct.bio** %4, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @nvdimm_spa_g_all_unmapped(%struct.TYPE_3__* %189, %struct.bio* %190, i64 %193)
  %195 = load %struct.bio*, %struct.bio** %4, align 8
  %196 = getelementptr inbounds %struct.bio, %struct.bio* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.bio*, %struct.bio** %4, align 8
  %199 = getelementptr inbounds %struct.bio, %struct.bio* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  store i32 0, i32* %7, align 4
  br label %200

200:                                              ; preds = %186, %167
  br label %244

201:                                              ; preds = %115
  %202 = load %struct.bio*, %struct.bio** %4, align 8
  %203 = getelementptr inbounds %struct.bio, %struct.bio* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 0
  store i8* %204, i8** %205, align 8
  %206 = load %struct.bio*, %struct.bio** %4, align 8
  %207 = getelementptr inbounds %struct.bio, %struct.bio* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 1
  store i32 %208, i32* %209, align 8
  %210 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 6
  store %struct.iovec* %6, %struct.iovec** %210, align 8
  %211 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load %struct.bio*, %struct.bio** %4, align 8
  %213 = getelementptr inbounds %struct.bio, %struct.bio* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 2
  store i32 %214, i32* %215, align 8
  %216 = load %struct.bio*, %struct.bio** %4, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 1
  store i32 %218, i32* %219, align 4
  %220 = load i8*, i8** @UIO_SYSSPACE, align 8
  %221 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 5
  store i8* %220, i8** %221, align 8
  %222 = load %struct.bio*, %struct.bio** %4, align 8
  %223 = getelementptr inbounds %struct.bio, %struct.bio* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @BIO_READ, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %201
  %228 = load i8*, i8** @UIO_READ, align 8
  br label %231

229:                                              ; preds = %201
  %230 = load i8*, i8** @UIO_WRITE, align 8
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i8* [ %228, %227 ], [ %230, %229 ]
  %233 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 4
  store i8* %232, i8** %233, align 8
  %234 = load i8*, i8** @curthread, align 8
  %235 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 3
  store i8* %234, i8** %235, align 8
  %236 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %237 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %236, i32 0, i32 2
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %237, align 8
  %239 = call i32 @nvdimm_spa_uio(%struct.TYPE_3__* %238, %struct.uio* %5)
  store i32 %239, i32* %7, align 4
  %240 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.bio*, %struct.bio** %4, align 8
  %243 = getelementptr inbounds %struct.bio, %struct.bio* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %231, %200
  %245 = load %struct.bio*, %struct.bio** %4, align 8
  %246 = getelementptr inbounds %struct.bio, %struct.bio* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.bio*, %struct.bio** %4, align 8
  %249 = getelementptr inbounds %struct.bio, %struct.bio* %248, i32 0, i32 6
  store i32 %247, i32* %249, align 8
  %250 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %251 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.bio*, %struct.bio** %4, align 8
  %254 = call i32 @devstat_end_transaction_bio(i32 %252, %struct.bio* %253)
  br label %255

255:                                              ; preds = %244, %114, %64
  %256 = load %struct.bio*, %struct.bio** %4, align 8
  %257 = getelementptr inbounds %struct.bio, %struct.bio* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.bio*, %struct.bio** %4, align 8
  %260 = getelementptr inbounds %struct.bio, %struct.bio* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 4
  %261 = load %struct.bio*, %struct.bio** %4, align 8
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @g_io_deliver(%struct.bio* %261, i32 %262)
  br label %10
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local i32 @pmap_large_map_wb(i32*, i64) #1

declare dso_local i32 @pmap_flush_cache_phys_range(i64, i64, i32) #1

declare dso_local i32 @uiomove_fromphys(i32, i32, i32, %struct.uio*) #1

declare dso_local i32 @nvdimm_spa_g_all_unmapped(%struct.TYPE_3__*, %struct.bio*, i64) #1

declare dso_local i32 @nvdimm_spa_uio(%struct.TYPE_3__*, %struct.uio*) #1

declare dso_local i32 @devstat_end_transaction_bio(i32, %struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
