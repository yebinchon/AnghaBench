; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_unmap_clear_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_unmap_clear_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sf_buf = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [58 x i8] c"lost reference (lvl) on root pg domain %p base %jx lvl %d\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"lost reference (idx) on root pg domain %p base %jx lvl %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, i64, i32, i32, %struct.TYPE_7__*, %struct.sf_buf**, i32)* @domain_unmap_clear_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_unmap_clear_pte(%struct.dmar_domain* %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_7__* %4, %struct.sf_buf** %5, i32 %6) #0 {
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.sf_buf**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store %struct.sf_buf** %5, %struct.sf_buf*** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @dmar_pte_clear(i32* %17)
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %20 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = call i32 @dmar_flush_pte_to_ram(i32 %21, %struct.TYPE_7__* %22)
  %24 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %25 = load %struct.sf_buf*, %struct.sf_buf** %24, align 8
  %26 = call %struct.TYPE_6__* @sf_buf_page(%struct.sf_buf* %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %15, align 8
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  %31 = load %struct.sf_buf*, %struct.sf_buf** %30, align 8
  %32 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %31)
  %33 = load %struct.sf_buf**, %struct.sf_buf*** %13, align 8
  store %struct.sf_buf* null, %struct.sf_buf** %33, align 8
  br label %34

34:                                               ; preds = %29, %7
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %81

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %47, i8* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %59, i8* %65)
  %67 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %68 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @dmar_pgfree(i32 %69, i64 %72, i32 %73)
  %75 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @domain_free_pgtbl_pde(%struct.dmar_domain* %75, i64 %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @dmar_pte_clear(i32*) #1

declare dso_local i32 @dmar_flush_pte_to_ram(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @sf_buf_page(%struct.sf_buf*) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_pgfree(i32, i64, i32) #1

declare dso_local i32 @domain_free_pgtbl_pde(%struct.dmar_domain*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
