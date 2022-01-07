; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32*, i32, i32, i32*, i32** }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"arcmsr: Can't allocate MSI-X resource\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@arcmsr_intr_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"arcmsr: Cannot set up MSI-X interrupt handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"arcmsr: MSI-X INT enabled\0A\00", align 1
@ACB_F_MSIX_ENABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_setup_msix(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %75, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 1, %12
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SYS_RES_IRQ, align 4
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %25 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i32* @bus_alloc_resource_any(i32 %22, i32 %23, i32* %29, i32 %30)
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %33 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %32, i32 0, i32 5
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* %31, i32** %37, align 8
  %38 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %39 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %38, i32 0, i32 5
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %11
  %47 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %86

48:                                               ; preds = %11
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %50 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %53 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %52, i32 0, i32 5
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @INTR_MPSAFE, align 4
  %60 = load i32, i32* @INTR_TYPE_CAM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @arcmsr_intr_handler, align 4
  %63 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %64 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %65 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i64 @bus_setup_intr(i32 %51, i32* %58, i32 %61, i32* null, i32 %62, %struct.AdapterControlBlock* %63, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %48
  %73 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %86

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %5

78:                                               ; preds = %5
  %79 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ACB_F_MSIX_ENABLED, align 4
  %81 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %82 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %2, align 4
  br label %93

86:                                               ; preds = %72, %46
  %87 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %88 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %91 = call i32 @arcmsr_teardown_intr(i32 %89, %struct.AdapterControlBlock* %90)
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %86, %78
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.AdapterControlBlock*, i32*) #1

declare dso_local i32 @arcmsr_teardown_intr(i32, %struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
