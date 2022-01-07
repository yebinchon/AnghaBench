; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_sunix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_sunix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_softc = type { i32 }

@PUC_CFG_GET_TYPE = common dso_local global i32 0, align 4
@PUC_TYPE_SERIAL = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puc_softc*, i32, i32, i64*)* @puc_config_sunix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_config_sunix(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.puc_softc* %0, %struct.puc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %60 [
    i32 129, label %12
    i32 128, label %36
  ]

12:                                               ; preds = %4
  %13 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %14 = load i32, i32* @PUC_CFG_GET_TYPE, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i64*, i64** %9, align 8
  %17 = call i32 @puc_config(%struct.puc_softc* %13, i32 %14, i32 %15, i64* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %12
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 3
  %30 = mul nsw i32 %29, 8
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %63

36:                                               ; preds = %4
  %37 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %38 = load i32, i32* @PUC_CFG_GET_TYPE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = call i32 @puc_config(%struct.puc_softc* %37, i32 %38, i32 %39, i64* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %63

46:                                               ; preds = %36
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %52, 3
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ false, %46 ], [ %53, %51 ]
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 16, i32 20
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %5, align 4
  br label %63

60:                                               ; preds = %4
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %54, %44, %32, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @puc_config(%struct.puc_softc*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
