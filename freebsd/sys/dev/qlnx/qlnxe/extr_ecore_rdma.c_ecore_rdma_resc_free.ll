; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_resc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_resc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_rdma_resc_free(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %3 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %4 = call i64 @IS_IWARP(%struct.ecore_hwfn* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %8 = call i32 @ecore_iwarp_resc_free(%struct.ecore_hwfn* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 11
  %15 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %10, i32* %14, i32 1)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 10
  %21 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %16, i32* %20, i32 1)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 9
  %27 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %22, i32* %26, i32 1)
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  %33 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %28, i32* %32, i32 1)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  %39 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %34, i32* %38, i32 1)
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %40, i32* %44, i32 1)
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %46, i32* %50, i32 0)
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %54 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %52, i32* %56, i32 1)
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %60 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %58, i32* %62, i32 1)
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %64, i32* %68, i32 1)
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %71 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @OSAL_FREE(i32 %72, i8* %77)
  %79 = load i8*, i8** @OSAL_NULL, align 8
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %81 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %85 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %88 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @OSAL_FREE(i32 %86, i8* %91)
  %93 = load i8*, i8** @OSAL_NULL, align 8
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %95 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i8* %93, i8** %97, align 8
  ret void
}

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_resc_free(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn*, i32*, i32) #1

declare dso_local i32 @OSAL_FREE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
