; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_domain_is_sp_lvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_domain_is_sp_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@domain_is_sp_lvl.sagaw_sp = internal constant [4 x i32] [i32 129, i32 131, i32 128, i32 130], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domain_is_sp_lvl(%struct.dmar_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %9, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DMAR_CAP_SPS(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nitems(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_is_sp_lvl.sagaw_sp, i64 0, i64 0))
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @domain_is_sp_lvl.sagaw_sp, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %22, %2
  %31 = phi i1 [ false, %2 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @DMAR_CAP_SPS(i32) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
