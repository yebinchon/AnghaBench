; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_machdep.c_bus_dma_run_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_machdep.c_bus_dma_run_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_common = type { i32, i32, i32, i64 (i32, i32)*, %struct.bus_dma_tag_common*, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_dma_run_filter(%struct.bus_dma_tag_common* %0, i32 %1) #0 {
  %3 = alloca %struct.bus_dma_tag_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bus_dma_tag_common* %0, %struct.bus_dma_tag_common** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %56, %2
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %13 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %19 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %25 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %22, %16, %6
  %31 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %32 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %31, i32 0, i32 3
  %33 = load i64 (i32, i32)*, i64 (i32, i32)** %32, align 8
  %34 = icmp eq i64 (i32, i32)* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %37 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %36, i32 0, i32 3
  %38 = load i64 (i32, i32)*, i64 (i32, i32)** %37, align 8
  %39 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %40 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 %38(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35, %30
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %35, %22
  %47 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %48 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %47, i32 0, i32 4
  %49 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %48, align 8
  store %struct.bus_dma_tag_common* %49, %struct.bus_dma_tag_common** %3, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %3, align 8
  %55 = icmp ne %struct.bus_dma_tag_common* %54, null
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  br i1 %57, label %6, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
