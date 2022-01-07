; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32*, i32*, i32*, i32 }

@DMAR_INTR_TOTAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dmar_unit*)* @dmar_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_release_resources(i32 %0, %struct.dmar_unit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dmar_unit* %1, %struct.dmar_unit** %4, align 8
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %7 = call i32 @dmar_fini_busdma(%struct.dmar_unit* %6)
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %9 = call i32 @dmar_fini_irt(%struct.dmar_unit* %8)
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %11 = call i32 @dmar_fini_qi(%struct.dmar_unit* %10)
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %13 = call i32 @dmar_fini_fault_log(%struct.dmar_unit* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %23, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DMAR_INTR_TOTAL, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dmar_release_intr(i32 %19, %struct.dmar_unit* %20, i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %28 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %35 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %38 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bus_deactivate_resource(i32 %32, i32 %33, i32 %36, i32* %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %44 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %47 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %45, i32* %48)
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %51 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %31, %26
  %53 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %54 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %59 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @delete_unrhdr(i32* %60)
  %62 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %63 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %66 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %71 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @vm_object_deallocate(i32* %72)
  %74 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %75 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @dmar_fini_busdma(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_fini_irt(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_fini_qi(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_fini_fault_log(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_release_intr(i32, %struct.dmar_unit*, i32) #1

declare dso_local i32 @bus_deactivate_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @delete_unrhdr(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
