; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_alloc_slab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_alloc_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64 (i32*, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)*, i32 }
%struct.TYPE_19__ = type { i32* }

@vm_ndomains = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"keg_alloc_slab: domain %d out of range\00", align 1
@UMA_ZONE_OFFPAGE = common dso_local global i32 0, align 4
@UMA_ZONE_MALLOC = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@UMA_ZONE_NODUMP = common dso_local global i32 0, align 4
@M_NODUMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SKIP_NONE = common dso_local global i32 0, align 4
@UMA_ZONE_VTOSLAB = common dso_local global i32 0, align 4
@SLAB_SETSIZE = common dso_local global i32 0, align 4
@KTR_UMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"keg_alloc_slab: allocated slab %p for %s(%p)\00", align 1
@UMA_ZONE_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32)* @keg_alloc_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @keg_alloc_slab(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @vm_ndomains, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ false, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = call i32 @KEG_LOCK_ASSERT(%struct.TYPE_21__* %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 13
  %37 = icmp eq i32* %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @MPASS(i32 %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 12
  %42 = load i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)*, i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)** %41, align 8
  store i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)* %42, i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)** %11, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = call i32 @KEG_UNLOCK(%struct.TYPE_21__* %43)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  store i32* null, i32** %14, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UMA_ZONE_OFFPAGE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %23
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.TYPE_20__* @zone_alloc_item(i32 %54, i32* null, i32 %55, i32 %56)
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %12, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %59 = icmp eq %struct.TYPE_20__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %271

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @UMA_ZONE_MALLOC, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @M_ZERO, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %78

73:                                               ; preds = %62
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UMA_ZONE_NODUMP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @M_NODUMP, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %13, align 8
  %96 = load i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)*, i32* (%struct.TYPE_19__*, i64, i32, i32*, i32)** %11, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32* %96(%struct.TYPE_19__* %97, i64 %98, i32 %99, i32* %15, i32 %100)
  store i32* %101, i32** %14, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %89
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UMA_ZONE_OFFPAGE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %116 = load i32, i32* @SKIP_NONE, align 4
  %117 = call i32 @zone_free_item(i32 %114, %struct.TYPE_20__* %115, i32* null, i32 %116)
  br label %118

118:                                              ; preds = %111, %104
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  br label %271

119:                                              ; preds = %89
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @uma_total_inc(i64 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @UMA_ZONE_OFFPAGE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %119
  %129 = load i32*, i32** %14, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = bitcast i32* %134 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %12, align 8
  br label %136

136:                                              ; preds = %128, %119
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @UMA_ZONE_VTOSLAB, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %136
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %160, %143
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = load i32*, i32** %14, align 8
  %152 = ptrtoint i32* %151 to i64
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* @PAGE_SIZE, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %152, %156
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %159 = call i32 @vsetslab(i64 %157, %struct.TYPE_20__* %158)
  br label %160

160:                                              ; preds = %150
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %144

163:                                              ; preds = %144
  br label %164

164:                                              ; preds = %163, %136
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 6
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %167, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  store i32* %168, i32** %170, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %15, align 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @SLAB_SETSIZE, align 4
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 4
  %185 = call i32 @BIT_FILL(i32 %182, i32* %184)
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 4
  %188 = load i64 (i32*, i32, i32)*, i64 (i32*, i32, i32)** %187, align 8
  %189 = icmp ne i64 (i32*, i32, i32)* %188, null
  br i1 %189, label %190, label %234

190:                                              ; preds = %164
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %219, %190
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %222

197:                                              ; preds = %191
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 4
  %200 = load i64 (i32*, i32, i32)*, i64 (i32*, i32, i32)** %199, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = mul nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i64 %200(i32* %210, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %197
  br label %222

218:                                              ; preds = %197
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %191

222:                                              ; preds = %217, %191
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %223, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %222
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @keg_free_slab(%struct.TYPE_21__* %229, %struct.TYPE_20__* %230, i32 %231)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  br label %271

233:                                              ; preds = %222
  br label %234

234:                                              ; preds = %233, %164
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %236 = call i32 @KEG_LOCK(%struct.TYPE_21__* %235)
  %237 = load i32, i32* @KTR_UMA, align 4
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %243 = call i32 @CTR3(i32 %237, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %238, i32 %241, %struct.TYPE_21__* %242)
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @UMA_ZONE_HASH, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %234
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 8
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %254 = load i32*, i32** %14, align 8
  %255 = call i32 @UMA_HASH_INSERT(i32* %252, %struct.TYPE_20__* %253, i32* %254)
  br label %256

256:                                              ; preds = %250, %234
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, %259
  store i32 %263, i32* %261, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %256, %228, %118, %60
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  ret %struct.TYPE_20__* %272
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @KEG_LOCK_ASSERT(%struct.TYPE_21__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @KEG_UNLOCK(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @zone_alloc_item(i32, i32*, i32, i32) #1

declare dso_local i32 @zone_free_item(i32, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @uma_total_inc(i64) #1

declare dso_local i32 @vsetslab(i64, %struct.TYPE_20__*) #1

declare dso_local i32 @BIT_FILL(i32, i32*) #1

declare dso_local i32 @keg_free_slab(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @KEG_LOCK(%struct.TYPE_21__*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.TYPE_20__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @UMA_HASH_INSERT(i32*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
