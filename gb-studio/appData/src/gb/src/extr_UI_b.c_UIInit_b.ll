; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI_b.c_UIInit_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI_b.c_UIInit_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bank_data_ptrs = common dso_local global i64* null, align 8
@FRAME_BANK = common dso_local global i64 0, align 8
@FRAME_BANK_OFFSET = common dso_local global i64 0, align 8
@ui_white = common dso_local global i32 0, align 4
@ui_black = common dso_local global i32 0, align 4
@CURSOR_BANK = common dso_local global i64 0, align 8
@CURSOR_BANK_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIInit_b() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @UISetPos(i32 160, i32 144)
  %3 = load i64*, i64** @bank_data_ptrs, align 8
  %4 = load i64, i64* @FRAME_BANK, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FRAME_BANK_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* @FRAME_BANK, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @SetBankedBkgData(i64 %9, i32 192, i32 9, i64 %10)
  %12 = load i32, i32* @ui_white, align 4
  %13 = call i32 @set_bkg_data(i32 201, i32 1, i32 %12)
  %14 = load i32, i32* @ui_black, align 4
  %15 = call i32 @set_bkg_data(i32 202, i32 1, i32 %14)
  %16 = load i64*, i64** @bank_data_ptrs, align 8
  %17 = load i64, i64* @CURSOR_BANK, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CURSOR_BANK_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* @FRAME_BANK, align 8
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @SetBankedBkgData(i64 %22, i32 203, i32 1, i64 %23)
  ret void
}

declare dso_local i32 @UISetPos(i32, i32) #1

declare dso_local i32 @SetBankedBkgData(i64, i32, i32, i64) #1

declare dso_local i32 @set_bkg_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
