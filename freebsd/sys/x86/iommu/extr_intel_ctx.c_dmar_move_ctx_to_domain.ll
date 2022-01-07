; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_move_ctx_to_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_move_ctx_to_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32, %struct.dmar_unit* }
%struct.dmar_unit = type { i32 }
%struct.dmar_ctx = type { i32, %struct.dmar_domain* }
%struct.sf_buf = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"domain %p %u moving between dmars %u %u\00", align 1
@TD_PREP_PINNED_ASSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dmar%d rid %x domain %d->%d %s-mapped\0A\00", align 1
@DMAR_DOMAIN_IDMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@TD_PINNED_ASSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_move_ctx_to_domain(%struct.dmar_domain* %0, %struct.dmar_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca %struct.dmar_ctx*, align 8
  %6 = alloca %struct.dmar_unit*, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sf_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store %struct.dmar_ctx* %1, %struct.dmar_ctx** %5, align 8
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 2
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %12, align 8
  store %struct.dmar_unit* %13, %struct.dmar_unit** %6, align 8
  %14 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %14, i32 0, i32 1
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %15, align 8
  store %struct.dmar_domain* %16, %struct.dmar_domain** %7, align 8
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %19 = icmp eq %struct.dmar_domain* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %23 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %22, i32 0, i32 2
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %23, align 8
  %25 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %26 = icmp eq %struct.dmar_unit* %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %29 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %30 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %33 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %32, i32 0, i32 2
  %34 = load %struct.dmar_unit*, %struct.dmar_unit** %33, align 8
  %35 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %38 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %37, i32 0, i32 2
  %39 = load %struct.dmar_unit*, %struct.dmar_unit** %38, align 8
  %40 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %27, i8* %43)
  %45 = load i32, i32* @TD_PREP_PINNED_ASSERT, align 4
  %46 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %47 = call i32* @dmar_map_ctx_entry(%struct.dmar_ctx* %46, %struct.sf_buf** %9)
  store i32* %47, i32** %8, align 8
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %49 = call i32 @DMAR_LOCK(%struct.dmar_unit* %48)
  %50 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %51 = call i32 @dmar_ctx_unlink(%struct.dmar_ctx* %50)
  %52 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %53 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %53, i32 0, i32 1
  store %struct.dmar_domain* %52, %struct.dmar_domain** %54, align 8
  %55 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %56 = call i32 @dmar_ctx_link(%struct.dmar_ctx* %55)
  %57 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @ctx_id_entry_init(%struct.dmar_ctx* %57, i32* %58, i32 1)
  %60 = load %struct.sf_buf*, %struct.sf_buf** %9, align 8
  %61 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %60)
  %62 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %63 = call i32 @dmar_flush_for_ctx_entry(%struct.dmar_unit* %62, i32 1)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %65 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %71 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %74 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %77 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %84 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i8* %83)
  %85 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %86 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %87 = call i32 @dmar_unref_domain_locked(%struct.dmar_unit* %85, %struct.dmar_domain* %86)
  %88 = load i32, i32* @TD_PINNED_ASSERT, align 4
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %21, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @dmar_map_ctx_entry(%struct.dmar_ctx*, %struct.sf_buf**) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_ctx_unlink(%struct.dmar_ctx*) #1

declare dso_local i32 @dmar_ctx_link(%struct.dmar_ctx*) #1

declare dso_local i32 @ctx_id_entry_init(%struct.dmar_ctx*, i32*, i32) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

declare dso_local i32 @dmar_flush_for_ctx_entry(%struct.dmar_unit*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dmar_unref_domain_locked(%struct.dmar_unit*, %struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
