; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_get_tp_ctrl2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_get_tp_ctrl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_rf_get_tp_ctrl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_get_tp_ctrl2(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %8 = call i32 @RF_WRITE(%struct.bwi_mac* %7, i32 82, i32 0)
  %9 = call i32 @DELAY(i32 10)
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %11 = call i64 @bwi_rf_lo_devi_measure(%struct.bwi_mac* %10, i32 0)
  store i64 %11, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @RF_WRITE(%struct.bwi_mac* %16, i32 82, i32 %17)
  %19 = call i32 @DELAY(i32 10)
  %20 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %21 = call i64 @bwi_rf_lo_devi_measure(%struct.bwi_mac* %20, i32 0)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @bwi_rf_lo_devi_measure(%struct.bwi_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
