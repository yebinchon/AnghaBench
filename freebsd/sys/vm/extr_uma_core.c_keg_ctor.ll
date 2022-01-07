; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_kctor_args = type { i64, i32, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_12__, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@UMA_ZONE_VM = common dso_local global i32 0, align 4
@UMA_ZFLAG_CACHEONLY = common dso_local global i32 0, align 4
@UMA_ZONE_ZINIT = common dso_local global i32 0, align 4
@zero_init = common dso_local global i32 0, align 4
@UMA_ZONE_MALLOC = common dso_local global i32 0, align 4
@UMA_ZONE_VTOSLAB = common dso_local global i32 0, align 4
@UMA_ZONE_PCPU = common dso_local global i32 0, align 4
@UMA_ZONE_CACHESPREAD = common dso_local global i32 0, align 4
@UMA_SLAB_SPACE = common dso_local global i64 0, align 8
@UMA_ZONE_OFFPAGE = common dso_local global i32 0, align 4
@slabzone = common dso_local global i32* null, align 8
@booted = common dso_local global i64 0, align 8
@BOOT_PAGEALLOC = common dso_local global i64 0, align 8
@startup_alloc = common dso_local global i32 0, align 4
@pcpu_page_alloc = common dso_local global i32 0, align 4
@page_alloc = common dso_local global i32 0, align 4
@pcpu_page_free = common dso_local global i32 0, align 4
@page_free = common dso_local global i32 0, align 4
@UMA_ZONE_MTXCLASS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SIZEOF_UMA_SLAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"zone %s ipers %d rsize %d size %d slab won't fit\00", align 1
@UMA_ZONE_HASH = common dso_local global i32 0, align 4
@KTR_UMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"keg_ctor %p zone %s(%p) out %d free %d\0A\00", align 1
@uz_link = common dso_local global i32 0, align 4
@uma_rwlock = common dso_local global i32 0, align 4
@uma_kegs = common dso_local global i32 0, align 4
@uk_link = common dso_local global i32 0, align 4
@uma_small_alloc = common dso_local global i32 0, align 4
@uma_small_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @keg_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keg_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uma_kctor_args*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.uma_kctor_args*
  store %struct.uma_kctor_args* %13, %struct.uma_kctor_args** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @bzero(%struct.TYPE_13__* %16, i32 %17)
  %19 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %20 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %25 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 8
  %29 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %30 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 4
  %34 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %35 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 17
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %46 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 13
  store i32* null, i32** %51, align 8
  %52 = call i32 (...) @DOMAINSET_RR()
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 16
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 16
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %60 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %11, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 15
  store i32 %64, i32* %66, align 4
  %67 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %68 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UMA_ZONE_VM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %4
  %74 = load i32, i32* @UMA_ZFLAG_CACHEONLY, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %4
  %80 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %81 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @UMA_ZONE_ZINIT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @zero_init, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 14
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %92 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @UMA_ZONE_MALLOC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @UMA_ZONE_VTOSLAB, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %90
  %104 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %105 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @UMA_ZONE_PCPU, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32, i32* @UMA_ZONE_PCPU, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %103
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UMA_ZONE_CACHESPREAD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = call i32 @keg_cachespread_init(%struct.TYPE_13__* %125)
  br label %140

127:                                              ; preds = %117
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @UMA_SLAB_SPACE, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = call i32 @keg_large_init(%struct.TYPE_13__* %134)
  br label %139

136:                                              ; preds = %127
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = call i32 @keg_small_init(%struct.TYPE_13__* %137)
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %124
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @UMA_ZONE_OFFPAGE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32*, i32** @slabzone, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 13
  store i32* %148, i32** %150, align 8
  br label %151

151:                                              ; preds = %147, %140
  %152 = load i64, i64* @booted, align 8
  %153 = load i64, i64* @BOOT_PAGEALLOC, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @startup_alloc, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 12
  store i32 %156, i32* %158, align 8
  br label %175

159:                                              ; preds = %151
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @UMA_ZONE_PCPU, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* @pcpu_page_alloc, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 12
  store i32 %167, i32* %169, align 8
  br label %174

170:                                              ; preds = %159
  %171 = load i32, i32* @page_alloc, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 12
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %155
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @UMA_ZONE_PCPU, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i32, i32* @pcpu_page_free, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 11
  store i32 %183, i32* %185, align 4
  br label %190

186:                                              ; preds = %175
  %187 = load i32, i32* @page_free, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %192 = load %struct.uma_kctor_args*, %struct.uma_kctor_args** %9, align 8
  %193 = getelementptr inbounds %struct.uma_kctor_args, %struct.uma_kctor_args* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @UMA_ZONE_MTXCLASS, align 4
  %196 = and i32 %194, %195
  %197 = call i32 @KEG_LOCK_INIT(%struct.TYPE_13__* %191, i32 %196)
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @UMA_ZONE_OFFPAGE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %241, label %204

204:                                              ; preds = %190
  %205 = load i32, i32* @PAGE_SIZE, align 4
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %205, %208
  %210 = load i32, i32* @SIZEOF_UMA_SLAB, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add i64 %217, 4
  %219 = load i32, i32* @PAGE_SIZE, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %219, %222
  %224 = sext i32 %223 to i64
  %225 = icmp ule i64 %218, %224
  %226 = zext i1 %225 to i32
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = call i32 @KASSERT(i32 %226, i8* %239)
  br label %241

241:                                              ; preds = %204, %190
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @UMA_ZONE_HASH, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 9
  %251 = call i32 @hash_alloc(i32* %250, i32 0)
  br label %252

252:                                              ; preds = %248, %241
  %253 = load i32, i32* @KTR_UMA, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = sdiv i32 %261, %264
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %265, %268
  %270 = sext i32 %269 to i64
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 7
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %270, %273
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @CTR5(i32 %253, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %254, i32 %257, %struct.TYPE_13__* %258, i64 %274, i64 %277)
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 6
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %282 = load i32, i32* @uz_link, align 4
  %283 = call i32 @LIST_INSERT_HEAD(i32* %280, %struct.TYPE_13__* %281, i32 %282)
  %284 = call i32 @rw_wlock(i32* @uma_rwlock)
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %286 = load i32, i32* @uk_link, align 4
  %287 = call i32 @LIST_INSERT_HEAD(i32* @uma_kegs, %struct.TYPE_13__* %285, i32 %286)
  %288 = call i32 @rw_wunlock(i32* @uma_rwlock)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DOMAINSET_RR(...) #1

declare dso_local i32 @keg_cachespread_init(%struct.TYPE_13__*) #1

declare dso_local i32 @keg_large_init(%struct.TYPE_13__*) #1

declare dso_local i32 @keg_small_init(%struct.TYPE_13__*) #1

declare dso_local i32 @KEG_LOCK_INIT(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hash_alloc(i32*, i32) #1

declare dso_local i32 @CTR5(i32, i8*, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
