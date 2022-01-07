; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_deflate.c_ng_deflate_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_deflate.c_ng_deflate_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i32*, i32, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64*, i32, i32*, i32, i32 }

@DEFLATE_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@DEFLATE_HDRLEN = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ng_deflate: compression error: %d (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PROT_COMPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mbuf*, %struct.mbuf**)* @ng_deflate_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_deflate_compress(i32 %0, %struct.mbuf* %1, %struct.mbuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_8__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DEFLATE_BUF_SIZE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = call i32 @NG_FREE_M(%struct.mbuf* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %281

42:                                               ; preds = %3
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = load i32, i32* @M_NOWAIT, align 4
  %45 = call %struct.mbuf* @m_unshare(%struct.mbuf* %43, i32 %44)
  store %struct.mbuf* %45, %struct.mbuf** %6, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = icmp eq %struct.mbuf* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %281

55:                                               ; preds = %42
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = ptrtoint i64* %60 to i32
  %62 = call i32 @m_copydata(%struct.mbuf* %56, i32 0, i32 %57, i32 %61)
  %63 = load i32, i32* @DEFLATE_BUF_SIZE, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %55
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i64* %73, i64** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  br label %94

81:                                               ; preds = %55
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i64* %85, i64** %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  br label %94

94:                                               ; preds = %81, %70
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* @DEFLATE_HDRLEN, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  store i32* %101, i32** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 2
  %107 = load i32, i32* @DEFLATE_HDRLEN, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %115 = call i32 @deflate(%struct.TYPE_9__* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @Z_OK, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %94
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @LOG_NOTICE, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @log(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %130)
  %132 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %133 = call i32 @NG_FREE_M(%struct.mbuf* %132)
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %4, align 4
  br label %281

135:                                              ; preds = %94
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 4
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp sgt i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @MPASS(i32 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 0
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @MPASS(i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @MPASS(i32 %168)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 255
  %179 = zext i1 %178 to i32
  %180 = call i32 @MPASS(i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 255
  %190 = zext i1 %189 to i32
  %191 = call i32 @MPASS(i32 %190)
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %135
  %196 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %197 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %196, %struct.mbuf** %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %203
  store i32 %208, i32* %206, align 4
  br label %276

209:                                              ; preds = %135
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @PROT_COMPD, align 4
  %214 = call i32 @be16enc(i32* %212, i32 %213)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @be16enc(i32* %218, i32 %221)
  %223 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = ptrtoint i32* %227 to i32
  %229 = call i32 @m_copyback(%struct.mbuf* %223, i32 0, i32 %224, i32 %228)
  %230 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %231 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %209
  %237 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %238 = call i32 @m_freem(%struct.mbuf* %237)
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* @ENOMEM, align 4
  store i32 %244, i32* %4, align 4
  br label %281

245:                                              ; preds = %209
  %246 = load i32, i32* %9, align 4
  %247 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %248 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %246, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %245
  %253 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %256 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %254, %258
  %260 = call i32 @m_adj(%struct.mbuf* %253, i32 %259)
  br label %261

261:                                              ; preds = %252, %245
  br label %262

262:                                              ; preds = %261
  %263 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %264 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %263, %struct.mbuf** %264, align 8
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, %270
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %262, %195
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  store i32 0, i32* %4, align 4
  br label %281

281:                                              ; preds = %276, %236, %119, %48, %33
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local %struct.TYPE_8__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_unshare(%struct.mbuf*, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
