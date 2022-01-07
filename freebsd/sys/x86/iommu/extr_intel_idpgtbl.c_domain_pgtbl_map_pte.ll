; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_pgtbl_map_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_pgtbl_map_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.dmar_domain = type { i32, i32 }
%struct.sf_buf = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@DMAR_PGF_OBJL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lost PGF_OBJL\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"lost root page table page %p\00", align 1
@DMAR_PGF_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"loosing root page %p\00", align 1
@DMAR_PTE_R = common dso_local global i32 0, align 4
@DMAR_PTE_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.dmar_domain*, i32, i32, i32, i64*, %struct.sf_buf**)* @domain_pgtbl_map_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @domain_pgtbl_map_pte(%struct.dmar_domain* %0, i32 %1, i32 %2, i32 %3, i64* %4, %struct.sf_buf** %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.sf_buf**, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.sf_buf*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.sf_buf** %5, %struct.sf_buf*** %13, align 8
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %21 = call i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain* %20)
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @domain_pgtbl_get_pindex(%struct.dmar_domain* %28, i32 %29, i32 %30)
  store i64 %31, i64* %18, align 8
  %32 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %33 = load %struct.sf_buf*, %struct.sf_buf** %32, align 8
  %34 = icmp ne %struct.sf_buf* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %6
  %36 = load i64, i64* %18, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %42 = load %struct.sf_buf*, %struct.sf_buf** %41, align 8
  %43 = call i64 @sf_buf_kva(%struct.sf_buf* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %16, align 8
  br label %145

45:                                               ; preds = %35, %6
  %46 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %47 = load %struct.sf_buf*, %struct.sf_buf** %46, align 8
  %48 = icmp ne %struct.sf_buf* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %51 = load %struct.sf_buf*, %struct.sf_buf** %50, align 8
  %52 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i64, i64* %18, align 8
  %55 = load i64*, i64** %12, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %118, %53
  %57 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %58 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %18, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %63 = call %struct.TYPE_10__* @dmar_map_pgtbl(i32 %59, i64 %60, i32 %61, %struct.sf_buf** %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %16, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %65 = icmp eq %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %144

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %71 = bitcast %struct.dmar_domain* %70 to i8*
  %72 = call i32 @KASSERT(i32 %69, i8* %71)
  %73 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %74 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %18, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @DMAR_PGF_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = call %struct.TYPE_9__* @dmar_pgalloc(i32 %75, i64 %76, i32 %79)
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %14, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %82 = icmp eq %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %154

84:                                               ; preds = %66
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  store %struct.sf_buf* null, %struct.sf_buf** %15, align 8
  %89 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.TYPE_10__* @domain_pgtbl_map_pte(%struct.dmar_domain* %89, i32 %90, i32 %92, i32 %93, i64* %19, %struct.sf_buf** %15)
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %17, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %96 = icmp eq %struct.TYPE_10__* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %84
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %104 = bitcast %struct.dmar_domain* %103 to i8*
  %105 = call i32 @KASSERT(i32 %102, i8* %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %111 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @dmar_pgfree(i32 %112, i64 %115, i32 %116)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %154

118:                                              ; preds = %84
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* @DMAR_PTE_R, align 4
  %122 = load i32, i32* @DMAR_PTE_W, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %125 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_9__* %124)
  %126 = or i32 %123, %125
  %127 = call i32 @dmar_pte_store(i32* %120, i32 %126)
  %128 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %129 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %132 = call i32 @dmar_flush_pte_to_ram(i32 %130, %struct.TYPE_10__* %131)
  %133 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %134 = call %struct.TYPE_11__* @sf_buf_page(%struct.sf_buf* %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %143 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %142)
  br label %56

144:                                              ; preds = %56
  br label %145

145:                                              ; preds = %144, %40
  %146 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @domain_pgtbl_pte_off(%struct.dmar_domain* %146, i32 %147, i32 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %151
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %16, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %7, align 8
  br label %154

154:                                              ; preds = %145, %97, %83
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %155
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @domain_pgtbl_get_pindex(%struct.dmar_domain*, i32, i32) #1

declare dso_local i64 @sf_buf_kva(%struct.sf_buf*) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

declare dso_local %struct.TYPE_10__* @dmar_map_pgtbl(i32, i64, i32, %struct.sf_buf**) #1

declare dso_local %struct.TYPE_9__* @dmar_pgalloc(i32, i64, i32) #1

declare dso_local i32 @dmar_pgfree(i32, i64, i32) #1

declare dso_local i32 @dmar_pte_store(i32*, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_9__*) #1

declare dso_local i32 @dmar_flush_pte_to_ram(i32, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @sf_buf_page(%struct.sf_buf*) #1

declare dso_local i32 @domain_pgtbl_pte_off(%struct.dmar_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
