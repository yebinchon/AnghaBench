; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_plpar_iommu.c_phyp_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_plpar_iommu.c_phyp_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.dma_window = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@papr_supports_stuff_tce = common dso_local global i64 0, align 8
@H_STUFF_TCE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@H_PUT_TCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phyp_iommu_unmap(i32 %0, %struct.TYPE_5__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dma_window*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.dma_window*
  store %struct.dma_window* %15, %struct.dma_window** %9, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %89, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %92

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @trunc_page(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %33, %42
  %44 = call i32 @round_page(i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i64, i64* @papr_supports_stuff_tce, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %20
  %48 = load i32, i32* @H_STUFF_TCE, align 4
  %49 = load %struct.dma_window*, %struct.dma_window** %9, align 8
  %50 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sdiv i32 %55, %56
  %58 = call i32 (i32, i32, i32, i32, ...) @phyp_hcall(i32 %48, i32 %53, i32 %54, i32 0, i32 %57)
  br label %80

59:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32, i32* @H_PUT_TCE, align 4
  %66 = load %struct.dma_window*, %struct.dma_window** %9, align 8
  %67 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 (i32, i32, i32, i32, ...) @phyp_hcall(i32 %65, i32 %70, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %13, align 4
  br label %60

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %47
  %81 = load %struct.dma_window*, %struct.dma_window** %9, align 8
  %82 = getelementptr inbounds %struct.dma_window, %struct.dma_window* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @vmem_xfree(i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %16

92:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i32 @phyp_hcall(i32, i32, i32, i32, ...) #1

declare dso_local i32 @vmem_xfree(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
