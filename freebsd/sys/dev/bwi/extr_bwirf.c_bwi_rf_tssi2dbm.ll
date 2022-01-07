; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_tssi2dbm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_tssi2dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf }
%struct.bwi_rf = type { i32, i32, i64* }

@BWI_TSSI_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_rf_tssi2dbm(%struct.bwi_mac* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.bwi_rf*, align 8
  %8 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 0
  store %struct.bwi_rf* %10, %struct.bwi_rf** %7, align 8
  %11 = load %struct.bwi_rf*, %struct.bwi_rf** %7, align 8
  %12 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %13, %15
  %17 = load %struct.bwi_rf*, %struct.bwi_rf** %7, align 8
  %18 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BWI_TSSI_MAX, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @BWI_TSSI_MAX, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load %struct.bwi_rf*, %struct.bwi_rf** %7, align 8
  %34 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
