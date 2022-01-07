; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_free_pgtbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_free_pgtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@DMAR_ECAP_PT = common dso_local global i32 0, align 4
@DMAR_DOMAIN_IDMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lost pagetable object domain %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domain_free_pgtbl(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %5 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %6 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DMAR_ECAP_PT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %21 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %10
  %27 = phi i1 [ false, %10 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %30 = bitcast %struct.dmar_domain* %29 to i8*
  %31 = call i32 @KASSERT(i32 %28, i8* %30)
  br label %71

32:                                               ; preds = %1
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %34 = call i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain* %33)
  %35 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %36 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %38 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @put_idmap_pgtbl(i32* %44)
  %46 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %49 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %71

52:                                               ; preds = %32
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call %struct.TYPE_7__* @vm_page_lookup(i32* %55, i32 0)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %4, align 8
  br label %57

57:                                               ; preds = %63, %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = call %struct.TYPE_7__* @vm_page_next(%struct.TYPE_7__* %64)
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %4, align 8
  br label %57

66:                                               ; preds = %57
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @VM_OBJECT_WUNLOCK(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @vm_object_deallocate(i32* %69)
  br label %71

71:                                               ; preds = %66, %43, %26
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_DOMAIN_ASSERT_PGLOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @put_idmap_pgtbl(i32*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32*) #1

declare dso_local %struct.TYPE_7__* @vm_page_lookup(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_next(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
