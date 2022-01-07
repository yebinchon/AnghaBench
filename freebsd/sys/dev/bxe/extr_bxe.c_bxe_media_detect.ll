; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_media_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_media_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Found 10Gb Fiber media.\0A\00", align 1
@IFM_10G_SR = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Found 1Gb Fiber media.\0A\00", align 1
@IFM_1000_SX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Found 10GBase-CX4 media.\0A\00", align 1
@IFM_10G_CX4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Found 10Gb Twinax media.\0A\00", align 1
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Found 10GBase-T media.\0A\00", align 1
@IFM_10G_T = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Found 1000Base-T media.\0A\00", align 1
@IFM_1000_T = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Media not present.\0A\00", align 1
@PORT_OTHER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Unknown media!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_media_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_media_detect(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = call i64 @bxe_get_cur_phy_idx(%struct.bxe_softc* %5)
  store i64 %6, i64* %4, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %75 [
    i32 131, label %15
    i32 128, label %15
    i32 130, label %22
    i32 133, label %29
    i32 135, label %29
    i32 134, label %36
    i32 136, label %43
    i32 132, label %68
    i32 129, label %74
  ]

15:                                               ; preds = %1, %1
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = call i32 @BLOGI(%struct.bxe_softc* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @IFM_10G_SR, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %1
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = call i32 @BLOGI(%struct.bxe_softc* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @IFM_1000_SX, align 4
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %1, %1
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = call i32 @BLOGI(%struct.bxe_softc* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @IFM_10G_CX4, align 4
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %35, i32* %3, align 4
  br label %81

36:                                               ; preds = %1
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = call i32 @BLOGI(%struct.bxe_softc* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @IFM_10G_TWINAX, align 4
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @PORT_DA, align 4
  store i32 %42, i32* %3, align 4
  br label %81

43:                                               ; preds = %1
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %55 = call i32 @BLOGI(%struct.bxe_softc* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @IFM_10G_T, align 4
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %58 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @PORT_TP, align 4
  store i32 %59, i32* %3, align 4
  br label %67

60:                                               ; preds = %43
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %62 = call i32 @BLOGI(%struct.bxe_softc* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @IFM_1000_T, align 4
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @PORT_TP, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %53
  br label %81

68:                                               ; preds = %1
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = call i32 @BLOGI(%struct.bxe_softc* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* @PORT_OTHER, align 4
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %1
  br label %75

75:                                               ; preds = %1, %74
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %77 = call i32 @BLOGI(%struct.bxe_softc* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %79 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* @PORT_OTHER, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %68, %67, %36, %29, %22, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @bxe_get_cur_phy_idx(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
