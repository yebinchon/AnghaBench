; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_adjust_tpctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_adjust_tpctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.bwi_rf, %struct.bwi_softc* }
%struct.bwi_rf = type { i64, i32 }
%struct.bwi_softc = type { i32 }
%struct.bwi_tpctl = type { i32, i32, i32 }

@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_CARD_F_PA_GPIO9 = common dso_local global i32 0, align 4
@BWI_RF_ATTEN_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*, i32, i32)* @bwi_mac_adjust_tpctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_adjust_tpctl(%struct.bwi_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_softc*, align 8
  %8 = alloca %struct.bwi_rf*, align 8
  %9 = alloca %struct.bwi_tpctl, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 2
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %14, align 8
  store %struct.bwi_softc* %15, %struct.bwi_softc** %7, align 8
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %17 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %16, i32 0, i32 1
  store %struct.bwi_rf* %17, %struct.bwi_rf** %8, align 8
  %18 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %19 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %18, i32 0, i32 0
  %20 = call i32 @bcopy(i32* %19, %struct.bwi_tpctl* %9, i32 12)
  %21 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %9, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = call i32 @bwi_mac_balance_atten(i32* %10, i32* %11)
  %34 = load %struct.bwi_rf*, %struct.bwi_rf** %8, align 8
  %35 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %3
  %40 = load %struct.bwi_rf*, %struct.bwi_rf** %8, align 8
  %41 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %94

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %45, 1
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  store i32 3, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %70

55:                                               ; preds = %47
  %56 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %57 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BWI_CARD_F_PA_GPIO9, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @BWI_RF_ATTEN_FACTOR, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 2
  %66 = mul nsw i32 %63, %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %50
  br label %92

71:                                               ; preds = %44
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 3
  store i32 %84, i32* %11, align 4
  br label %90

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, 2
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, 2
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90, %74, %71
  br label %92

92:                                               ; preds = %91, %70
  %93 = call i32 @bwi_mac_balance_atten(i32* %10, i32* %11)
  br label %94

94:                                               ; preds = %92, %39, %3
  %95 = load i32, i32* %10, align 4
  %96 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %9, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %9, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %9, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %102 = call i32 @bwi_mac_lock(%struct.bwi_mac* %101)
  %103 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %104 = call i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %103, %struct.bwi_tpctl* %9)
  %105 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %106 = call i32 @bwi_mac_unlock(%struct.bwi_mac* %105)
  ret void
}

declare dso_local i32 @bcopy(i32*, %struct.bwi_tpctl*, i32) #1

declare dso_local i32 @bwi_mac_balance_atten(i32*, i32*) #1

declare dso_local i32 @bwi_mac_lock(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac*, %struct.bwi_tpctl*) #1

declare dso_local i32 @bwi_mac_unlock(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
