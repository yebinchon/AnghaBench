; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_pgtbl_get_pindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_pgtbl_get_pindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"wrong lvl %p %d\00", align 1
@DMAR_NPTEPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, i32, i32)* @domain_pgtbl_get_pindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_pgtbl_get_pindex(%struct.dmar_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %15 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ false, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %40, %18
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @domain_pgtbl_pte_off(%struct.dmar_domain* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DMAR_NPTEPG, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %34, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %8, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @domain_pgtbl_pte_off(%struct.dmar_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
