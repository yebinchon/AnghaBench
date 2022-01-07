; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_unmap_buf_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_unmap_buf_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sf_buf = type { i32 }

@DMAR_DOMAIN_IDMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"modifying idmap pagetable domain %p\00", align 1
@DMAR_PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"non-aligned base %p %jx %jx\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"non-aligned size %p %jx %jx\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"base too high %p %jx %jx agaw %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"end too high %p %jx %jx agaw %d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"size overflow %p %jx %jx\00", align 1
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid flags %x\00", align 1
@DMAR_PGF_OBJL = common dso_local global i32 0, align 4
@TD_PREP_PINNED_ASSERT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"sleeping or page missed %p %jx %d 0x%x\00", align 1
@DMAR_PTE_SP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"unmapping loop overflow %p %jx %jx %jx\00", align 1
@TD_PINNED_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, i64, i64, i32)* @domain_unmap_buf_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_unmap_buf_locked(%struct.dmar_domain* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.sf_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %16 = call i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain* %15)
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %223

20:                                               ; preds = %4
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %22 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %29 = bitcast %struct.dmar_domain* %28 to i8*
  %30 = call i32 @KASSERT(i32 %27, i8* %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @DMAR_PAGE_MASK, align 8
  %33 = and i64 %31, %32
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %35, i8* %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @DMAR_PAGE_MASK, align 8
  %46 = and i64 %44, %45
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @KASSERT(i32 %48, i8* %55)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %59 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 1, %60
  %62 = icmp ult i64 %57, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %8, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %70 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @KASSERT(i32 %63, i8* %72)
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %74, %75
  %77 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %78 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 1, %79
  %81 = icmp ult i64 %76, %80
  %82 = zext i1 %81 to i32
  %83 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %89 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @KASSERT(i32 %82, i8* %91)
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %93, %94
  %96 = load i64, i64* %7, align 8
  %97 = icmp ugt i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %8, align 8
  %103 = trunc i64 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @KASSERT(i32 %98, i8* %105)
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @KASSERT(i32 %112, i8* %115)
  store i64 0, i64* %13, align 8
  %117 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* @TD_PREP_PINNED_ASSERT, align 4
  store %struct.sf_buf* null, %struct.sf_buf** %11, align 8
  br label %121

121:                                              ; preds = %208, %20
  %122 = load i64, i64* %8, align 8
  %123 = icmp ugt i64 %122, 0
  br i1 %123, label %124, label %215

124:                                              ; preds = %121
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %190, %124
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %128 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %193

131:                                              ; preds = %125
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %134 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @domain_is_sp_lvl(%struct.dmar_domain* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %190

144:                                              ; preds = %138, %131
  %145 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i64 @domain_page_size(%struct.dmar_domain* %145, i32 %146)
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %190

152:                                              ; preds = %144
  %153 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call %struct.TYPE_4__* @domain_pgtbl_map_pte(%struct.dmar_domain* %153, i64 %154, i32 %155, i32 %156, i32* %12, %struct.sf_buf** %11)
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %10, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %159 = icmp ne %struct.TYPE_4__* %158, null
  %160 = zext i1 %159 to i32
  %161 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %162 = load i64, i64* %7, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @KASSERT(i32 %160, i8* %167)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DMAR_PTE_SP, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %152
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %178 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = icmp eq i32 %176, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %175, %152
  %183 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %188 = call i32 @domain_unmap_clear_pte(%struct.dmar_domain* %183, i64 %184, i32 %185, i32 %186, %struct.TYPE_4__* %187, %struct.sf_buf** %11, i32 0)
  br label %193

189:                                              ; preds = %175
  br label %190

190:                                              ; preds = %189, %151, %143
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %125

193:                                              ; preds = %182, %125
  %194 = load i64, i64* %8, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp uge i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i64, i64* %8, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i64, i64* %13, align 8
  %204 = trunc i64 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 @KASSERT(i32 %197, i8* %206)
  br label %208

208:                                              ; preds = %193
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %7, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %7, align 8
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* %8, align 8
  %214 = sub i64 %213, %212
  store i64 %214, i64* %8, align 8
  br label %121

215:                                              ; preds = %121
  %216 = load %struct.sf_buf*, %struct.sf_buf** %11, align 8
  %217 = icmp ne %struct.sf_buf* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.sf_buf*, %struct.sf_buf** %11, align 8
  %220 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* @TD_PINNED_ASSERT, align 4
  store i32 0, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %19
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @domain_is_sp_lvl(%struct.dmar_domain*, i32) #1

declare dso_local i64 @domain_page_size(%struct.dmar_domain*, i32) #1

declare dso_local %struct.TYPE_4__* @domain_pgtbl_map_pte(%struct.dmar_domain*, i64, i32, i32, i32*, %struct.sf_buf**) #1

declare dso_local i32 @domain_unmap_clear_pte(%struct.dmar_domain*, i64, i32, i32, %struct.TYPE_4__*, %struct.sf_buf**, i32) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
