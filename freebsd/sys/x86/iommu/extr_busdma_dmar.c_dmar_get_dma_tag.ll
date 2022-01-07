; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_get_dma_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_get_dma_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }
%struct.dmar_ctx = type { i32 }

@bootverbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dmar_get_dma_tag(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmar_unit*, align 8
  %7 = alloca %struct.dmar_ctx*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @bootverbose, align 4
  %11 = call %struct.dmar_unit* @dmar_find(i32 %9, i32 %10)
  store %struct.dmar_unit* %11, %struct.dmar_unit** %6, align 8
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %13 = icmp eq %struct.dmar_unit* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %17 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %38

21:                                               ; preds = %15
  %22 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %23 = call i32 @dmar_quirks_pre_use(%struct.dmar_unit* %22)
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %25 = call i32 @dmar_instantiate_rmrr_ctxs(%struct.dmar_unit* %24)
  %26 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.dmar_ctx* @dmar_instantiate_ctx(%struct.dmar_unit* %26, i32 %27, i32 0)
  store %struct.dmar_ctx* %28, %struct.dmar_ctx** %7, align 8
  %29 = load %struct.dmar_ctx*, %struct.dmar_ctx** %7, align 8
  %30 = icmp eq %struct.dmar_ctx* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %35

32:                                               ; preds = %21
  %33 = load %struct.dmar_ctx*, %struct.dmar_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %33, i32 0, i32 0
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32* [ null, %31 ], [ %34, %32 ]
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %35, %20, %14
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local %struct.dmar_unit* @dmar_find(i32, i32) #1

declare dso_local i32 @dmar_quirks_pre_use(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_instantiate_rmrr_ctxs(%struct.dmar_unit*) #1

declare dso_local %struct.dmar_ctx* @dmar_instantiate_ctx(%struct.dmar_unit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
