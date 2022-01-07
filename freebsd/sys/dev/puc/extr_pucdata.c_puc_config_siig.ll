; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_siig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_siig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_softc = type { %struct.puc_cfg* }
%struct.puc_cfg = type { i32 }

@PUC_PORT_8S = common dso_local global i32 0, align 4
@PUC_PORT_2S1P = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puc_softc*, i32, i32, i64*)* @puc_config_siig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_config_siig(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.puc_cfg*, align 8
  store %struct.puc_softc* %0, %struct.puc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %12 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %11, i32 0, i32 0
  %13 = load %struct.puc_cfg*, %struct.puc_cfg** %12, align 8
  store %struct.puc_cfg* %13, %struct.puc_cfg** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %68 [
    i32 129, label %15
    i32 128, label %34
  ]

15:                                               ; preds = %4
  %16 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %17 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PUC_PORT_8S, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 4
  %27 = mul nsw i32 8, %26
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %5, align 4
  br label %71

33:                                               ; preds = %15
  br label %69

34:                                               ; preds = %4
  %35 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %36 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PUC_PORT_8S, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 4, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 16, %43 ], [ %46, %44 ]
  %49 = add nsw i32 16, %48
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %5, align 4
  br label %71

52:                                               ; preds = %34
  %53 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %54 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PUC_PORT_2S1P, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %66 [
    i32 0, label %60
    i32 1, label %62
    i32 2, label %64
  ]

60:                                               ; preds = %58
  %61 = load i64*, i64** %9, align 8
  store i64 16, i64* %61, align 8
  store i32 0, i32* %5, align 4
  br label %71

62:                                               ; preds = %58
  %63 = load i64*, i64** %9, align 8
  store i64 20, i64* %63, align 8
  store i32 0, i32* %5, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load i64*, i64** %9, align 8
  store i64 28, i64* %65, align 8
  store i32 0, i32* %5, align 4
  br label %71

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %52
  br label %69

68:                                               ; preds = %4
  br label %69

69:                                               ; preds = %68, %67, %33
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %64, %62, %60, %47, %29
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
