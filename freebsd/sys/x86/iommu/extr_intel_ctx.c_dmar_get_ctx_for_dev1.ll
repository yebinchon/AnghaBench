; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_get_ctx_for_dev1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_get_ctx_for_dev1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { i32, %struct.TYPE_2__, %struct.dmar_domain* }
%struct.TYPE_2__ = type { i32* }
%struct.dmar_domain = type { i32, i32, i32 }
%struct.dmar_unit = type { i32, i32, i32, i32 }
%struct.sf_buf = type { i32 }

@TD_PREP_PINNED_ASSERT = common dso_local global i32 0, align 4
@TD_PINNED_ASSERT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"dmar%d pci%d:%d:%d:%d rid %x domain %d mgaw %d agaw %d %s-mapped\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@M_DMAR_CTX = common dso_local global i32 0, align 4
@DMAR_GCMD_TE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"dmar%d: enabled translation\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"dmar%d: enabling translation failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_ctx* (%struct.dmar_unit*, i32*, i32, i32, i32, i8*, i32, i32, i32)* @dmar_get_ctx_for_dev1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_ctx* @dmar_get_ctx_for_dev1(%struct.dmar_unit* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dmar_ctx*, align 8
  %11 = alloca %struct.dmar_unit*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dmar_domain*, align 8
  %21 = alloca %struct.dmar_domain*, align 8
  %22 = alloca %struct.dmar_ctx*, align 8
  %23 = alloca %struct.dmar_ctx*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.sf_buf*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %9
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @pci_get_bus(i32* %34)
  store i32 %35, i32* %26, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @pci_get_slot(i32* %36)
  store i32 %37, i32* %27, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @pci_get_function(i32* %38)
  store i32 %39, i32* %28, align 4
  br label %47

40:                                               ; preds = %9
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @PCI_RID2BUS(i32 %41)
  store i32 %42, i32* %26, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @PCI_RID2SLOT(i32 %43)
  store i32 %44, i32* %27, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @PCI_RID2FUNC(i32 %45)
  store i32 %46, i32* %28, align 4
  br label %47

47:                                               ; preds = %40, %33
  store i32 0, i32* %30, align 4
  %48 = load i32, i32* @TD_PREP_PINNED_ASSERT, align 4
  %49 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %50 = call i32 @DMAR_LOCK(%struct.dmar_unit* %49)
  %51 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call %struct.dmar_ctx* @dmar_find_ctx_locked(%struct.dmar_unit* %51, i32 %52)
  store %struct.dmar_ctx* %53, %struct.dmar_ctx** %22, align 8
  store i32 0, i32* %29, align 4
  %54 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %55 = icmp eq %struct.dmar_ctx* %54, null
  br i1 %55, label %56, label %177

56:                                               ; preds = %47
  %57 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %58 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %57)
  %59 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @PCI_RID2BUS(i32 %60)
  %62 = call i32 @dmar_ensure_ctx_page(%struct.dmar_unit* %59, i32 %61)
  %63 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call %struct.dmar_domain* @dmar_domain_alloc(%struct.dmar_unit* %63, i32 %64)
  store %struct.dmar_domain* %65, %struct.dmar_domain** %21, align 8
  %66 = load %struct.dmar_domain*, %struct.dmar_domain** %21, align 8
  %67 = icmp eq %struct.dmar_domain* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* @TD_PINNED_ASSERT, align 4
  store %struct.dmar_ctx* null, %struct.dmar_ctx** %10, align 8
  br label %250

70:                                               ; preds = %56
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %70
  %74 = load %struct.dmar_domain*, %struct.dmar_domain** %21, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %26, align 4
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %28, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i8*, i8** %16, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @domain_init_rmrr(%struct.dmar_domain* %74, i32* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i8* %81, i32 %82)
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %29, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load %struct.dmar_domain*, %struct.dmar_domain** %21, align 8
  %88 = call i32 @dmar_domain_destroy(%struct.dmar_domain* %87)
  %89 = load i32, i32* @TD_PINNED_ASSERT, align 4
  store %struct.dmar_ctx* null, %struct.dmar_ctx** %10, align 8
  br label %250

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %70
  %92 = load %struct.dmar_domain*, %struct.dmar_domain** %21, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call %struct.dmar_ctx* @dmar_ctx_alloc(%struct.dmar_domain* %92, i32 %93)
  store %struct.dmar_ctx* %94, %struct.dmar_ctx** %23, align 8
  %95 = load %struct.dmar_ctx*, %struct.dmar_ctx** %23, align 8
  %96 = call i32* @dmar_map_ctx_entry(%struct.dmar_ctx* %95, %struct.sf_buf** %25)
  store i32* %96, i32** %24, align 8
  %97 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %98 = call i32 @DMAR_LOCK(%struct.dmar_unit* %97)
  %99 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call %struct.dmar_ctx* @dmar_find_ctx_locked(%struct.dmar_unit* %99, i32 %100)
  store %struct.dmar_ctx* %101, %struct.dmar_ctx** %22, align 8
  %102 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %103 = icmp eq %struct.dmar_ctx* %102, null
  br i1 %103, label %104, label %161

104:                                              ; preds = %91
  %105 = load %struct.dmar_domain*, %struct.dmar_domain** %21, align 8
  store %struct.dmar_domain* %105, %struct.dmar_domain** %20, align 8
  %106 = load %struct.dmar_ctx*, %struct.dmar_ctx** %23, align 8
  store %struct.dmar_ctx* %106, %struct.dmar_ctx** %22, align 8
  %107 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %108 = call i32 @dmar_ctx_link(%struct.dmar_ctx* %107)
  %109 = load i32*, i32** %12, align 8
  %110 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %111 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32* %109, i32** %112, align 8
  %113 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @ctx_tag_init(%struct.dmar_ctx* %113, i32* %114)
  %116 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %117 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %116, i32 0, i32 3
  %118 = call i64 @LIST_EMPTY(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  store i32 1, i32* %30, align 4
  br label %121

121:                                              ; preds = %120, %104
  %122 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %123 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %122, i32 0, i32 3
  %124 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %125 = load i32, i32* @link, align 4
  %126 = call i32 @LIST_INSERT_HEAD(i32* %123, %struct.dmar_domain* %124, i32 %125)
  %127 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %128 = load i32*, i32** %24, align 8
  %129 = call i32 @ctx_id_entry_init(%struct.dmar_ctx* %127, i32* %128, i32 0)
  %130 = load i32*, i32** %12, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %121
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %135 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %138 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %145 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %148 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %151 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %157 = call i32 @device_printf(i32* %133, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %146, i32 %149, i32 %152, i8* %156)
  br label %158

158:                                              ; preds = %132, %121
  %159 = load %struct.sf_buf*, %struct.sf_buf** %25, align 8
  %160 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %159)
  br label %176

161:                                              ; preds = %91
  %162 = load %struct.sf_buf*, %struct.sf_buf** %25, align 8
  %163 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %162)
  %164 = load %struct.dmar_domain*, %struct.dmar_domain** %21, align 8
  %165 = call i32 @dmar_domain_destroy(%struct.dmar_domain* %164)
  %166 = load %struct.dmar_ctx*, %struct.dmar_ctx** %23, align 8
  %167 = load i32, i32* @M_DMAR_CTX, align 4
  %168 = call i32 @free(%struct.dmar_ctx* %166, i32 %167)
  %169 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %170 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %169, i32 0, i32 2
  %171 = load %struct.dmar_domain*, %struct.dmar_domain** %170, align 8
  store %struct.dmar_domain* %171, %struct.dmar_domain** %20, align 8
  %172 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %173 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %161, %158
  br label %196

177:                                              ; preds = %47
  %178 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %179 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %178, i32 0, i32 2
  %180 = load %struct.dmar_domain*, %struct.dmar_domain** %179, align 8
  store %struct.dmar_domain* %180, %struct.dmar_domain** %20, align 8
  %181 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %182 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %177
  %187 = load i32*, i32** %12, align 8
  %188 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %189 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  store i32* %187, i32** %190, align 8
  br label %191

191:                                              ; preds = %186, %177
  %192 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %193 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %191, %176
  %197 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %198 = load i32, i32* %30, align 4
  %199 = call i32 @dmar_flush_for_ctx_entry(%struct.dmar_unit* %197, i32 %198)
  store i32 %199, i32* %29, align 4
  %200 = load i32, i32* %29, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %204 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %205 = call i32 @dmar_free_ctx_locked(%struct.dmar_unit* %203, %struct.dmar_ctx* %204)
  %206 = load i32, i32* @TD_PINNED_ASSERT, align 4
  store %struct.dmar_ctx* null, %struct.dmar_ctx** %10, align 8
  br label %250

207:                                              ; preds = %196
  %208 = load i32, i32* %30, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %245

210:                                              ; preds = %207
  %211 = load i32, i32* %19, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %245, label %213

213:                                              ; preds = %210
  %214 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %215 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @DMAR_GCMD_TE, align 4
  %218 = and i32 %216, %217
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %213
  %221 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %222 = call i32 @dmar_enable_translation(%struct.dmar_unit* %221)
  store i32 %222, i32* %29, align 4
  %223 = load i32, i32* %29, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load i64, i64* @bootverbose, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %230 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %228, %225
  br label %244

234:                                              ; preds = %220
  %235 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %236 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %29, align 4
  %239 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %237, i32 %238)
  %240 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %241 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  %242 = call i32 @dmar_free_ctx_locked(%struct.dmar_unit* %240, %struct.dmar_ctx* %241)
  %243 = load i32, i32* @TD_PINNED_ASSERT, align 4
  store %struct.dmar_ctx* null, %struct.dmar_ctx** %10, align 8
  br label %250

244:                                              ; preds = %233
  br label %245

245:                                              ; preds = %244, %213, %210, %207
  %246 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %247 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %246)
  %248 = load i32, i32* @TD_PINNED_ASSERT, align 4
  %249 = load %struct.dmar_ctx*, %struct.dmar_ctx** %22, align 8
  store %struct.dmar_ctx* %249, %struct.dmar_ctx** %10, align 8
  br label %250

250:                                              ; preds = %245, %234, %202, %86, %68
  %251 = load %struct.dmar_ctx*, %struct.dmar_ctx** %10, align 8
  ret %struct.dmar_ctx* %251
}

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i32 @pci_get_slot(i32*) #1

declare dso_local i32 @pci_get_function(i32*) #1

declare dso_local i32 @PCI_RID2BUS(i32) #1

declare dso_local i32 @PCI_RID2SLOT(i32) #1

declare dso_local i32 @PCI_RID2FUNC(i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local %struct.dmar_ctx* @dmar_find_ctx_locked(%struct.dmar_unit*, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_ensure_ctx_page(%struct.dmar_unit*, i32) #1

declare dso_local %struct.dmar_domain* @dmar_domain_alloc(%struct.dmar_unit*, i32) #1

declare dso_local i32 @domain_init_rmrr(%struct.dmar_domain*, i32*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dmar_domain_destroy(%struct.dmar_domain*) #1

declare dso_local %struct.dmar_ctx* @dmar_ctx_alloc(%struct.dmar_domain*, i32) #1

declare dso_local i32* @dmar_map_ctx_entry(%struct.dmar_ctx*, %struct.sf_buf**) #1

declare dso_local i32 @dmar_ctx_link(%struct.dmar_ctx*) #1

declare dso_local i32 @ctx_tag_init(%struct.dmar_ctx*, i32*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.dmar_domain*, i32) #1

declare dso_local i32 @ctx_id_entry_init(%struct.dmar_ctx*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

declare dso_local i32 @free(%struct.dmar_ctx*, i32) #1

declare dso_local i32 @dmar_flush_for_ctx_entry(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_free_ctx_locked(%struct.dmar_unit*, %struct.dmar_ctx*) #1

declare dso_local i32 @dmar_enable_translation(%struct.dmar_unit*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
