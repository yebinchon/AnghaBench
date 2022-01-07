; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_noise_bcm2050.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_noise_bcm2050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf, %struct.TYPE_2__* }
%struct.bwi_rf = type { i64* }
%struct.TYPE_2__ = type { i32 }

@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_RF_NOISE = common dso_local global i32 0, align 4
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@BWI_NRSSI_TBLSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_rf_calc_noise_bcm2050 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_calc_noise_bcm2050(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_rf*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %6 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %7 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %8 = load i32, i32* @BWI_COMM_MOBJ_RF_NOISE, align 4
  %9 = call i64 @MOBJ_READ_2(%struct.bwi_mac* %6, i32 %7, i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %22 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %21, i32 0, i32 0
  store %struct.bwi_rf* %22, %struct.bwi_rf** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BWI_NRSSI_TBLSZ, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @BWI_NRSSI_TBLSZ, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %31 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 31, %37
  %39 = mul nsw i32 %38, -131
  %40 = sdiv i32 %39, 128
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 67
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 31, %44
  %46 = mul nsw i32 %45, -149
  %47 = sdiv i32 %46, 128
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 68
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %29
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @MOBJ_READ_2(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
