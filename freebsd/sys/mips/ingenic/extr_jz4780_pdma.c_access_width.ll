; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_access_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_access_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_request = type { i32, i32 }

@DCM_SP_1 = common dso_local global i32 0, align 4
@DCM_SP_2 = common dso_local global i32 0, align 4
@DCM_SP_4 = common dso_local global i32 0, align 4
@DCM_DP_1 = common dso_local global i32 0, align 4
@DCM_DP_2 = common dso_local global i32 0, align 4
@DCM_DP_4 = common dso_local global i32 0, align 4
@DCM_TSZ_1 = common dso_local global i32 0, align 4
@DCM_TSZ_2 = common dso_local global i32 0, align 4
@DCM_TSZ_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdma_request*, i32*, i32*)* @access_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_width(%struct.xdma_request* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdma_request* %0, %struct.xdma_request** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %10 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %13 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @max(i32 %11, i32 %14)
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %18 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 1, label %20
    i32 2, label %25
    i32 4, label %30
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @DCM_SP_1, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load i32, i32* @DCM_SP_2, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @DCM_SP_4, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %36

35:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %76

36:                                               ; preds = %30, %25, %20
  %37 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %38 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %55 [
    i32 1, label %40
    i32 2, label %45
    i32 4, label %50
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @DCM_DP_1, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %56

45:                                               ; preds = %36
  %46 = load i32, i32* @DCM_DP_2, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %36
  %51 = load i32, i32* @DCM_DP_4, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %56

55:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %76

56:                                               ; preds = %50, %45, %40
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %74 [
    i32 1, label %59
    i32 2, label %64
    i32 4, label %69
  ]

59:                                               ; preds = %56
  %60 = load i32, i32* @DCM_TSZ_1, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %75

64:                                               ; preds = %56
  %65 = load i32, i32* @DCM_TSZ_2, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %75

69:                                               ; preds = %56
  %70 = load i32, i32* @DCM_TSZ_4, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %75

74:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %76

75:                                               ; preds = %69, %64, %59
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %74, %55, %35
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
