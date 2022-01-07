; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_map_buf_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_map_buf_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sf_buf = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DMAR_PGF_OBJL = common dso_local global i32 0, align 4
@TD_PREP_PINNED_ASSERT = common dso_local global i32 0, align 4
@DMAR_PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mapping loop overflow %p %jx %jx %jx\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pg_sz 0 lvl %d\00", align 1
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed waitable pte alloc %p\00", align 1
@TD_PINNED_ASSERT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMAR_PTE_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, i32, i32, i32*, i32, i32)* @domain_map_buf_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_map_buf_locked(%struct.dmar_domain* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.sf_buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %26 = call i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @TD_PREP_PINNED_ASSERT, align 4
  store %struct.sf_buf* null, %struct.sf_buf** %15, align 8
  store i64 0, i64* %19, align 8
  br label %33

33:                                               ; preds = %200, %6
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %210

36:                                               ; preds = %33
  store i32 0, i32* %23, align 4
  store i64 0, i64* %20, align 8
  store i32 0, i32* %24, align 4
  br label %37

37:                                               ; preds = %118, %36
  %38 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %39 = load i32, i32* %23, align 4
  %40 = call i32 @domain_page_size(%struct.dmar_domain* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @DMAR_PAGE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %22, align 8
  %45 = load i32, i32* %23, align 4
  %46 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %47 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %121

52:                                               ; preds = %37
  %53 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %54 = load i32, i32* %23, align 4
  %55 = call i32 @domain_is_sp_lvl(%struct.dmar_domain* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %118

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %16, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %11, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @VM_PAGE_TO_PHYS(i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68, %62, %58
  br label %118

79:                                               ; preds = %68
  %80 = load i64, i64* %20, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  store i64 1, i64* %20, align 8
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* %22, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %20, align 8
  %91 = add i64 %89, %90
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VM_PAGE_TO_PHYS(i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = add i64 %96, %97
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @VM_PAGE_TO_PHYS(i32 %101)
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = add nsw i32 %102, %103
  %105 = icmp ne i32 %94, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %87
  br label %111

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %20, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %20, align 8
  br label %83

111:                                              ; preds = %106, %83
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %22, align 8
  %115 = icmp uge i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 1, i32* %24, align 4
  br label %121

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %78, %57
  %119 = load i32, i32* %23, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %23, align 4
  br label %37

121:                                              ; preds = %116, %51
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp sge i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @KASSERT(i32 %125, i8* %131)
  %133 = load i32, i32* %16, align 4
  %134 = icmp sgt i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %23, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @KASSERT(i32 %135, i8* %138)
  %140 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call %struct.TYPE_5__* @domain_pgtbl_map_pte(%struct.dmar_domain* %140, i32 %141, i32 %142, i32 %143, i64* %21, %struct.sf_buf** %15)
  store %struct.TYPE_5__* %144, %struct.TYPE_5__** %14, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %146 = icmp eq %struct.TYPE_5__* %145, null
  br i1 %146, label %147, label %171

147:                                              ; preds = %121
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %154 = bitcast %struct.dmar_domain* %153 to i8*
  %155 = call i32 @KASSERT(i32 %152, i8* %154)
  %156 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %157 = icmp ne %struct.sf_buf* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %160 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %159)
  br label %161

161:                                              ; preds = %158, %147
  %162 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %17, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @domain_unmap_buf_locked(%struct.dmar_domain* %162, i32 %163, i32 %166, i32 %167)
  %169 = load i32, i32* @TD_PINNED_ASSERT, align 4
  %170 = load i32, i32* @ENOMEM, align 4
  store i32 %170, i32* %7, align 4
  br label %218

171:                                              ; preds = %121
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32*, i32** %11, align 8
  %175 = load i64, i64* %19, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @VM_PAGE_TO_PHYS(i32 %177)
  %179 = load i32, i32* %12, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %24, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i32, i32* @DMAR_PTE_SP, align 4
  br label %186

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  %188 = or i32 %180, %187
  %189 = call i32 @dmar_pte_store(i32* %173, i32 %188)
  %190 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %191 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %194 = call i32 @dmar_flush_pte_to_ram(i32 %192, %struct.TYPE_5__* %193)
  %195 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %196 = call %struct.TYPE_6__* @sf_buf_page(%struct.sf_buf* %195)
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %10, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %10, align 4
  %207 = load i64, i64* %22, align 8
  %208 = load i64, i64* %19, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %19, align 8
  br label %33

210:                                              ; preds = %33
  %211 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %212 = icmp ne %struct.sf_buf* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %215 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32, i32* @TD_PINNED_ASSERT, align 4
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %216, %161
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @domain_page_size(%struct.dmar_domain*, i32) #1

declare dso_local i32 @domain_is_sp_lvl(%struct.dmar_domain*, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @domain_pgtbl_map_pte(%struct.dmar_domain*, i32, i32, i32, i64*, %struct.sf_buf**) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

declare dso_local i32 @domain_unmap_buf_locked(%struct.dmar_domain*, i32, i32, i32) #1

declare dso_local i32 @dmar_pte_store(i32*, i32) #1

declare dso_local i32 @dmar_flush_pte_to_ram(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @sf_buf_page(%struct.sf_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
