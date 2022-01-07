; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_map_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_map_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i64, %struct.dmar_unit* }
%struct.dmar_unit = type { i32, i32 }

@DMAR_DOMAIN_IDMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"modifying idmap pagetable domain %p\00", align 1
@DMAR_PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"non-aligned base %p %jx %jx\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"non-aligned size %p %jx %jx\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"zero size %p %jx %jx\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"base too high %p %jx %jx agaw %d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"end too high %p %jx %jx agaw %d\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"size overflow %p %jx %jx\00", align 1
@DMAR_PTE_R = common dso_local global i32 0, align 4
@DMAR_PTE_W = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"neither read nor write %jx\00", align 1
@DMAR_PTE_SNP = common dso_local global i32 0, align 4
@DMAR_PTE_TM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid pte flags %jx\00", align 1
@DMAR_ECAP_SC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"PTE_SNP for dmar without snoop control %p %jx\00", align 1
@DMAR_ECAP_DI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"PTE_TM for dmar without DIOTLB %p %jx\00", align 1
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"invalid flags %x\00", align 1
@DMAR_CAP_CM = common dso_local global i32 0, align 4
@DMAR_CAP_RWBF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domain_map_buf(%struct.dmar_domain* %0, i64 %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dmar_unit*, align 8
  %15 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %17 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %16, i32 0, i32 2
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %17, align 8
  store %struct.dmar_unit* %18, %struct.dmar_unit** %14, align 8
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %20 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %27 = bitcast %struct.dmar_domain* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @DMAR_PAGE_MASK, align 8
  %31 = and i64 %29, %30
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %33, i8* %40)
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @DMAR_PAGE_MASK, align 8
  %44 = and i64 %42, %43
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %46, i8* %53)
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @KASSERT(i32 %57, i8* %64)
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %68 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = shl i64 1, %69
  %71 = icmp ult i64 %66, %70
  %72 = zext i1 %71 to i32
  %73 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %79 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @KASSERT(i32 %72, i8* %81)
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %87 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = shl i64 1, %88
  %90 = icmp ult i64 %85, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %98 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @KASSERT(i32 %91, i8* %100)
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %102, %103
  %105 = load i64, i64* %9, align 8
  %106 = icmp ugt i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* %10, align 8
  %112 = trunc i64 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @KASSERT(i32 %107, i8* %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @DMAR_PTE_R, align 4
  %118 = load i32, i32* @DMAR_PTE_W, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @KASSERT(i32 %122, i8* %125)
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @DMAR_PTE_R, align 4
  %129 = load i32, i32* @DMAR_PTE_W, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @DMAR_PTE_SNP, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @DMAR_PTE_TM, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = and i32 %127, %135
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @KASSERT(i32 %138, i8* %141)
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @DMAR_PTE_SNP, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %6
  %148 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %149 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DMAR_ECAP_SC, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %147, %6
  %155 = phi i1 [ true, %6 ], [ %153, %147 ]
  %156 = zext i1 %155 to i32
  %157 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @KASSERT(i32 %156, i8* %160)
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @DMAR_PTE_TM, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %154
  %167 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %168 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DMAR_ECAP_DI, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br label %173

173:                                              ; preds = %166, %154
  %174 = phi i1 [ true, %154 ], [ %172, %166 ]
  %175 = zext i1 %174 to i32
  %176 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = call i32 @KASSERT(i32 %175, i8* %179)
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %183 = xor i32 %182, -1
  %184 = and i32 %181, %183
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = call i32 @KASSERT(i32 %186, i8* %189)
  %191 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %192 = call i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain* %191)
  %193 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %194 = load i64, i64* %9, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @domain_map_buf_locked(%struct.dmar_domain* %193, i64 %194, i64 %195, i32* %196, i32 %197, i32 %198)
  store i32 %199, i32* %15, align 4
  %200 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %201 = call i32 @DMAR_DOMAIN_PGUNLOCK(%struct.dmar_domain* %200)
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %173
  %205 = load i32, i32* %15, align 4
  store i32 %205, i32* %7, align 4
  br label %234

206:                                              ; preds = %173
  %207 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %208 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @DMAR_CAP_CM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %215 = load i64, i64* %9, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @domain_flush_iotlb_sync(%struct.dmar_domain* %214, i64 %215, i64 %216)
  br label %233

218:                                              ; preds = %206
  %219 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %220 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @DMAR_CAP_RWBF, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %218
  %226 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %227 = call i32 @DMAR_LOCK(%struct.dmar_unit* %226)
  %228 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %229 = call i32 @dmar_flush_write_bufs(%struct.dmar_unit* %228)
  %230 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %231 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %230)
  br label %232

232:                                              ; preds = %225, %218
  br label %233

233:                                              ; preds = %232, %213
  store i32 0, i32* %7, align 4
  br label %234

234:                                              ; preds = %233, %204
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @domain_map_buf_locked(%struct.dmar_domain*, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @DMAR_DOMAIN_PGUNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @domain_flush_iotlb_sync(%struct.dmar_domain*, i64, i64) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_flush_write_bufs(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
