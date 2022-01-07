; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_clear_tssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_clear_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@BWI_INVALID_TSSI = common dso_local global i32 0, align 4
@BWI_LO_TSSI_MASK = common dso_local global i32 0, align 4
@BWI_HI_TSSI_MASK = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_TSSI_DS = common dso_local global i64 0, align 8
@BWI_COMM_MOBJ_TSSI_OFDM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_clear_tssi(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %54

12:                                               ; preds = %1
  %13 = load i32, i32* @BWI_INVALID_TSSI, align 4
  %14 = load i32, i32* @BWI_LO_TSSI_MASK, align 4
  %15 = call i32 @__SHIFTIN(i32 %13, i32 %14)
  %16 = load i32, i32* @BWI_INVALID_TSSI, align 4
  %17 = load i32, i32* @BWI_HI_TSSI_MASK, align 4
  %18 = call i32 @__SHIFTIN(i32 %16, i32 %17)
  %19 = or i32 %15, %18
  store i32 %19, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %33, %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %25 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %26 = load i64, i64* @BWI_COMM_MOBJ_TSSI_DS, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %24, i32 %25, i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %20

36:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %42 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %43 = load i64, i64* @BWI_COMM_MOBJ_TSSI_OFDM, align 8
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %41, i32 %42, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %37

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
