; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ctx_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ctx_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dom %p ref underflow %d %d\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_ctx*)* @dmar_ctx_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_ctx_link(%struct.dmar_ctx* %0) #0 {
  %2 = alloca %struct.dmar_ctx*, align 8
  %3 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_ctx* %0, %struct.dmar_ctx** %2, align 8
  %4 = load %struct.dmar_ctx*, %struct.dmar_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %4, i32 0, i32 0
  %6 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  store %struct.dmar_domain* %6, %struct.dmar_domain** %3, align 8
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DMAR_ASSERT_LOCKED(i32 %9)
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %15 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %21 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %24 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %18, i8* %26)
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %29 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %33 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %37 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %36, i32 0, i32 2
  %38 = load %struct.dmar_ctx*, %struct.dmar_ctx** %2, align 8
  %39 = load i32, i32* @link, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* %37, %struct.dmar_ctx* %38, i32 %39)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.dmar_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
