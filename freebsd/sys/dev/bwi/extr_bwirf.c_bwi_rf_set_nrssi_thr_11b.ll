; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_nrssi_thr_11b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_nrssi_thr_11b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_2__*, %struct.bwi_rf }
%struct.TYPE_2__ = type { i32 }
%struct.bwi_rf = type { i64, i32, i32* }

@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@BWI_PHYR_NRSSI_THR_11B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_rf_set_nrssi_thr_11b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_set_nrssi_thr_11b(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_rf*, align 8
  %4 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 1
  store %struct.bwi_rf* %6, %struct.bwi_rf** %3, align 8
  %7 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12, %1
  br label %98

22:                                               ; preds = %12
  %23 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %24 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 6
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %29 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %34 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %32, %37
  %39 = mul nsw i32 %38, 32
  store i32 %39, i32* %4, align 4
  %40 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %41 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 20, %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sdiv i32 %49, 40
  store i32 %50, i32* %4, align 4
  br label %58

51:                                               ; preds = %22
  %52 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %53 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 5
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %27
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = icmp sgt i32 %63, 62
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 62, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %69 = load i32, i32* @BWI_PHYR_NRSSI_THR_11B, align 4
  %70 = call i32 @PHY_READ(%struct.bwi_mac* %68, i32 %69)
  %71 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %72 = load i32, i32* @BWI_PHYR_NRSSI_THR_11B, align 4
  %73 = load i32, i32* %4, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %74, 28
  %76 = call i32 @PHY_WRITE(%struct.bwi_mac* %71, i32 %72, i32 %75)
  %77 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %78 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 6
  br i1 %80, label %81, label %98

81:                                               ; preds = %67
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = call i32 @PHY_WRITE(%struct.bwi_mac* %82, i32 135, i32 3597)
  %84 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %85 = call i32 @PHY_WRITE(%struct.bwi_mac* %84, i32 134, i32 3083)
  %86 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %87 = call i32 @PHY_WRITE(%struct.bwi_mac* %86, i32 133, i32 2569)
  %88 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %89 = call i32 @PHY_WRITE(%struct.bwi_mac* %88, i32 132, i32 2056)
  %90 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %91 = call i32 @PHY_WRITE(%struct.bwi_mac* %90, i32 131, i32 2056)
  %92 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %93 = call i32 @PHY_WRITE(%struct.bwi_mac* %92, i32 130, i32 1540)
  %94 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %95 = call i32 @PHY_WRITE(%struct.bwi_mac* %94, i32 129, i32 770)
  %96 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %97 = call i32 @PHY_WRITE(%struct.bwi_mac* %96, i32 128, i32 256)
  br label %98

98:                                               ; preds = %21, %81, %67
  ret void
}

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
