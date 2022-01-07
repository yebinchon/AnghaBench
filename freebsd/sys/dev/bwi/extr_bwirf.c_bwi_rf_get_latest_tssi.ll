; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_get_latest_tssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_get_latest_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }

@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_LO_TSSI_MASK = common dso_local global i32 0, align 4
@BWI_HI_TSSI_MASK = common dso_local global i32 0, align 4
@BWI_INVALID_TSSI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_rf_get_latest_tssi(%struct.bwi_mac* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %13, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %15 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i64 @MOBJ_READ_2(%struct.bwi_mac* %14, i32 %15, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @BWI_LO_TSSI_MASK, align 4
  %23 = call i64 @__SHIFTOUT(i64 %21, i32 %22)
  %24 = load i64*, i64** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64 %23, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @BWI_HI_TSSI_MASK, align 4
  %31 = call i64 @__SHIFTOUT(i64 %29, i32 %30)
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 %31, i64* %36, align 8
  br label %10

37:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BWI_INVALID_TSSI, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %38

55:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @MOBJ_READ_2(%struct.bwi_mac*, i32, i64) #1

declare dso_local i64 @__SHIFTOUT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
