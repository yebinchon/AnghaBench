; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_moxa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_moxa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_softc = type { %struct.puc_cfg* }
%struct.puc_cfg = type { i32 }

@PUC_CFG_GET_OFS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puc_softc*, i32, i32, i64*)* @puc_config_moxa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_config_moxa(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
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
  %15 = load i32, i32* @PUC_CFG_GET_OFS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %22 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 4165
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %27 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 4420
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 7, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %25, %17
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 512
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
