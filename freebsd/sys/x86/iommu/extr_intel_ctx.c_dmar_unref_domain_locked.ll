; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_unref_domain_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_unref_domain_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }
%struct.dmar_domain = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"dmar %d domain %p refs %u\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dmar %d domain %p refs %d ctx_cnt %d\00", align 1
@DMAR_DOMAIN_RMRR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"lost ref on RMRR domain %p\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, %struct.dmar_domain*)* @dmar_unref_domain_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_unref_domain_locked(%struct.dmar_unit* %0, %struct.dmar_domain* %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store %struct.dmar_domain* %1, %struct.dmar_domain** %4, align 8
  %5 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %6 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %5)
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %13 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %17 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %11, i8* %20)
  %22 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %23 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %26 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %35 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %38 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KASSERT(i32 %29, i8* %41)
  %43 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %44 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %2
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %49 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %53 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %52)
  br label %78

54:                                               ; preds = %2
  %55 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %56 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMAR_DOMAIN_RMRR, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %63 = bitcast %struct.dmar_domain* %62 to i8*
  %64 = call i32 @KASSERT(i32 %61, i8* %63)
  %65 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %66 = load i32, i32* @link, align 4
  %67 = call i32 @LIST_REMOVE(%struct.dmar_domain* %65, i32 %66)
  %68 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %69 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %68)
  %70 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %71 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %74 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %73, i32 0, i32 3
  %75 = call i32 @taskqueue_drain(i32 %72, i32* %74)
  %76 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %77 = call i32 @dmar_domain_destroy(%struct.dmar_domain* %76)
  br label %78

78:                                               ; preds = %54, %47
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @LIST_REMOVE(%struct.dmar_domain*, i32) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @dmar_domain_destroy(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
