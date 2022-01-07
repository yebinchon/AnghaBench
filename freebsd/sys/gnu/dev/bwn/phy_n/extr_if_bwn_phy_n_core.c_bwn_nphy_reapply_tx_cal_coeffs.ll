; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_reapply_tx_cal_coeffs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_reapply_tx_cal_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_reapply_tx_cal_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_reapply_tx_cal_coeffs(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %9, align 8
  store %struct.bwn_phy_n* %10, %struct.bwn_phy_n** %3, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = call i64 @bwn_get_centre_freq(%struct.bwn_mac* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %29 = call i64 @bwn_get_chan_type(%struct.bwn_mac* %28, i32* null)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %15, %1
  br label %97

32:                                               ; preds = %23
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %34 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %35 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %36 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %33, i32 %34, i32 7, i64* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %55, %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %46 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %44, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %37

58:                                               ; preds = %53, %37
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %97, label %61

61:                                               ; preds = %58
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %63 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %64 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %65 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %62, i32 %63, i32 4, i64* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %75, %61
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %68

78:                                               ; preds = %68
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = call i32 @BWN_NTAB16(i32 15, i32 88)
  %81 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %82 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %79, i32 %80, i32 4, i64* %81)
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %84 = call i32 @BWN_NTAB16(i32 15, i32 85)
  %85 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %86 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 5
  %89 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %83, i32 %84, i32 2, i64* %88)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = call i32 @BWN_NTAB16(i32 15, i32 93)
  %92 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %93 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 5
  %96 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %90, i32 %91, i32 2, i64* %95)
  br label %97

97:                                               ; preds = %31, %78, %58
  ret void
}

declare dso_local i64 @bwn_get_centre_freq(%struct.bwn_mac*) #1

declare dso_local i64 @bwn_get_chan_type(%struct.bwn_mac*, i32*) #1

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i64*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
