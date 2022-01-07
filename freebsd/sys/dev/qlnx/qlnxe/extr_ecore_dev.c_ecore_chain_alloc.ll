; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_chain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_chain = type { i32 }
%struct.ecore_chain_ext_pbl = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"Cannot allocate a chain with the given arguments:\0A[use_mode %d, mode %d, cnt_type %d, num_elems %d, elem_size %zu]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_chain_alloc(%struct.ecore_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, %struct.ecore_chain* %6, %struct.ecore_chain_ext_pbl* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ecore_chain*, align 8
  %17 = alloca %struct.ecore_chain_ext_pbl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store %struct.ecore_chain* %6, %struct.ecore_chain** %16, align 8
  store %struct.ecore_chain_ext_pbl* %7, %struct.ecore_chain_ext_pbl** %17, align 8
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i32 1, i32* %18, align 4
  br label %29

24:                                               ; preds = %8
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* %15, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ECORE_CHAIN_PAGE_CNT(i32 %25, i64 %26, i32 %27)
  store i32 %28, i32* %18, align 4
  br label %29

29:                                               ; preds = %24, %23
  %30 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i64, i64* %15, align 8
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @ecore_chain_alloc_sanity_check(%struct.ecore_dev* %30, i32 %31, i64 %32, i32 %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i64, i64* %15, align 8
  %44 = call i32 @DP_NOTICE(%struct.ecore_dev* %38, i32 0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42, i64 %43)
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %9, align 4
  br label %83

46:                                               ; preds = %29
  %47 = load %struct.ecore_chain*, %struct.ecore_chain** %16, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i64, i64* %15, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %55 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ecore_chain_init_params(%struct.ecore_chain* %47, i32 %48, i32 %50, i32 %51, i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %72 [
    i32 130, label %59
    i32 128, label %63
    i32 129, label %67
  ]

59:                                               ; preds = %46
  %60 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %61 = load %struct.ecore_chain*, %struct.ecore_chain** %16, align 8
  %62 = call i32 @ecore_chain_alloc_next_ptr(%struct.ecore_dev* %60, %struct.ecore_chain* %61)
  store i32 %62, i32* %19, align 4
  br label %72

63:                                               ; preds = %46
  %64 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %65 = load %struct.ecore_chain*, %struct.ecore_chain** %16, align 8
  %66 = call i32 @ecore_chain_alloc_single(%struct.ecore_dev* %64, %struct.ecore_chain* %65)
  store i32 %66, i32* %19, align 4
  br label %72

67:                                               ; preds = %46
  %68 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %69 = load %struct.ecore_chain*, %struct.ecore_chain** %16, align 8
  %70 = load %struct.ecore_chain_ext_pbl*, %struct.ecore_chain_ext_pbl** %17, align 8
  %71 = call i32 @ecore_chain_alloc_pbl(%struct.ecore_dev* %68, %struct.ecore_chain* %69, %struct.ecore_chain_ext_pbl* %70)
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %46, %67, %63, %59
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %77, i32* %9, align 4
  br label %83

78:                                               ; preds = %75
  %79 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %80 = load %struct.ecore_chain*, %struct.ecore_chain** %16, align 8
  %81 = call i32 @ecore_chain_free(%struct.ecore_dev* %79, %struct.ecore_chain* %80)
  %82 = load i32, i32* %19, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78, %76, %37
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @ECORE_CHAIN_PAGE_CNT(i32, i64, i32) #1

declare dso_local i32 @ecore_chain_alloc_sanity_check(%struct.ecore_dev*, i32, i64, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ecore_chain_init_params(%struct.ecore_chain*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_chain_alloc_next_ptr(%struct.ecore_dev*, %struct.ecore_chain*) #1

declare dso_local i32 @ecore_chain_alloc_single(%struct.ecore_dev*, %struct.ecore_chain*) #1

declare dso_local i32 @ecore_chain_alloc_pbl(%struct.ecore_dev*, %struct.ecore_chain*, %struct.ecore_chain_ext_pbl*) #1

declare dso_local i32 @ecore_chain_free(%struct.ecore_dev*, %struct.ecore_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
