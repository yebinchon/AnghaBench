; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ctx_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ctx_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"domain %p ctx dtr refs %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"domain %p ctx dtr refs %d ctx_cnt %d\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_ctx*)* @dmar_ctx_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_ctx_unlink(%struct.dmar_ctx* %0) #0 {
  %2 = alloca %struct.dmar_ctx*, align 8
  %3 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_ctx* %0, %struct.dmar_ctx** %2, align 8
  %4 = load %struct.dmar_ctx*, %struct.dmar_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %4, i32 0, i32 0
  %6 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  store %struct.dmar_domain* %6, %struct.dmar_domain** %3, align 8
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DMAR_ASSERT_LOCKED(i32 %9)
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %18 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %15, i8* %20)
  %22 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %23 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %26 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %32 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %35 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @KASSERT(i32 %29, i8* %37)
  %39 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %40 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %44 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.dmar_ctx*, %struct.dmar_ctx** %2, align 8
  %48 = load i32, i32* @link, align 4
  %49 = call i32 @LIST_REMOVE(%struct.dmar_ctx* %47, i32 %48)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.dmar_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
