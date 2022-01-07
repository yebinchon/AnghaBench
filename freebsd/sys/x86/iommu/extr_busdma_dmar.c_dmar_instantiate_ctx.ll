; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_instantiate_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_instantiate_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { i32 }
%struct.dmar_unit = type { i32 }

@DMAR_CTX_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dmar_ctx* @dmar_instantiate_ctx(%struct.dmar_unit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_ctx*, align 8
  %5 = alloca %struct.dmar_unit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmar_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dmar_get_requester(i32 %12, i32* %11)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @pci_get_domain(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @pci_get_bus(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pci_get_slot(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pci_get_function(i32 %20)
  %22 = call i32 @dmar_bus_dma_is_dev_disabled(i32 %15, i32 %17, i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.dmar_ctx* @dmar_get_ctx_for_dev(%struct.dmar_unit* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store %struct.dmar_ctx* %28, %struct.dmar_ctx** %9, align 8
  %29 = load %struct.dmar_ctx*, %struct.dmar_ctx** %9, align 8
  %30 = icmp eq %struct.dmar_ctx* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store %struct.dmar_ctx* null, %struct.dmar_ctx** %4, align 8
  br label %59

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %37 = call i32 @DMAR_LOCK(%struct.dmar_unit* %36)
  %38 = load %struct.dmar_ctx*, %struct.dmar_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DMAR_CTX_DISABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32, i32* @DMAR_CTX_DISABLED, align 4
  %46 = load %struct.dmar_ctx*, %struct.dmar_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %51 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %50)
  br label %56

52:                                               ; preds = %35
  %53 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %54 = load %struct.dmar_ctx*, %struct.dmar_ctx** %9, align 8
  %55 = call i32 @dmar_free_ctx_locked(%struct.dmar_unit* %53, %struct.dmar_ctx* %54)
  br label %56

56:                                               ; preds = %52, %44
  store %struct.dmar_ctx* null, %struct.dmar_ctx** %9, align 8
  br label %57

57:                                               ; preds = %56, %32
  %58 = load %struct.dmar_ctx*, %struct.dmar_ctx** %9, align 8
  store %struct.dmar_ctx* %58, %struct.dmar_ctx** %4, align 8
  br label %59

59:                                               ; preds = %57, %31
  %60 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  ret %struct.dmar_ctx* %60
}

declare dso_local i32 @dmar_get_requester(i32, i32*) #1

declare dso_local i32 @dmar_bus_dma_is_dev_disabled(i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local %struct.dmar_ctx* @dmar_get_ctx_for_dev(%struct.dmar_unit*, i32, i32, i32, i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_free_ctx_locked(%struct.dmar_unit*, %struct.dmar_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
