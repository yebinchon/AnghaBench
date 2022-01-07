; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unfinished unloads %p\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"destroying dom %p with contexts\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"destroying dom %p with ctx_cnt %d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"destroying dom %p with refs %d\00", align 1
@DMAR_DOMAIN_GAS_INITED = common dso_local global i32 0, align 4
@DMAR_DOMAIN_PGTBL_INITED = common dso_local global i32 0, align 4
@M_DMAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*)* @dmar_domain_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_domain_destroy(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %3 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %3, i32 0, i32 8
  %5 = call i32 @TAILQ_EMPTY(i32* %4)
  %6 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %7 = bitcast %struct.dmar_domain* %6 to i8*
  %8 = call i32 @KASSERT(i32 %5, i8* %7)
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %9, i32 0, i32 7
  %11 = call i32 @LIST_EMPTY(i32* %10)
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %13 = bitcast %struct.dmar_domain* %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %16 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %22 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %19, i8* %24)
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %27 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %33 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %30, i8* %35)
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %38 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMAR_DOMAIN_GAS_INITED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %45 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %44)
  %46 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %47 = call i32 @dmar_gas_fini_domain(%struct.dmar_domain* %46)
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %49 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %48)
  br label %50

50:                                               ; preds = %43, %1
  %51 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %52 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DMAR_DOMAIN_PGTBL_INITED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %59 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %64 = call i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %67 = call i32 @domain_free_pgtbl(%struct.dmar_domain* %66)
  br label %68

68:                                               ; preds = %65, %50
  %69 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %70 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %69, i32 0, i32 5
  %71 = call i32 @mtx_destroy(i32* %70)
  %72 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %73 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %78 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @free_unr(i32 %76, i32 %79)
  %81 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %82 = load i32, i32* @M_DMAR_DOMAIN, align 4
  %83 = call i32 @free(%struct.dmar_domain* %81, i32 %82)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_fini_domain(%struct.dmar_domain*) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @domain_free_pgtbl(%struct.dmar_domain*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @free(%struct.dmar_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
