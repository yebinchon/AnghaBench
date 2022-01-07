; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI_b.c_UIDrawFrame_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI_b.c_UIDrawFrame_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ui_frame_tl_tiles = common dso_local global i32 0, align 4
@ui_frame_bl_tiles = common dso_local global i32 0, align 4
@ui_frame_tr_tiles = common dso_local global i32 0, align 4
@ui_frame_br_tiles = common dso_local global i32 0, align 4
@ui_frame_l_tiles = common dso_local global i32 0, align 4
@ui_frame_r_tiles = common dso_local global i32 0, align 4
@ui_frame_bg_tiles = common dso_local global i32 0, align 4
@ui_frame_t_tiles = common dso_local global i32 0, align 4
@ui_frame_b_tiles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIDrawFrame_b(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ui_frame_tl_tiles, align 4
  %14 = call i32 @set_win_tiles(i32 %11, i32 %12, i32 1, i32 1, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @ui_frame_bl_tiles, align 4
  %19 = call i32 @set_win_tiles(i32 %15, i32 %17, i32 1, i32 1, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @ui_frame_tr_tiles, align 4
  %24 = call i32 @set_win_tiles(i32 %22, i32 0, i32 1, i32 1, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @ui_frame_br_tiles, align 4
  %31 = call i32 @set_win_tiles(i32 %27, i32 %29, i32 1, i32 1, i32 %30)
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %61, %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ui_frame_l_tiles, align 4
  %41 = call i32 @set_win_tiles(i32 %38, i32 %39, i32 1, i32 1, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ui_frame_r_tiles, align 4
  %47 = call i32 @set_win_tiles(i32 %44, i32 %45, i32 1, i32 1, i32 %46)
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %57, %37
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ui_frame_bg_tiles, align 4
  %56 = call i32 @set_win_tiles(i32 %53, i32 %54, i32 1, i32 1, i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %48

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %32

64:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %78, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ui_frame_t_tiles, align 4
  %72 = call i32 @set_win_tiles(i32 %70, i32 0, i32 1, i32 1, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* @ui_frame_b_tiles, align 4
  %77 = call i32 @set_win_tiles(i32 %73, i32 %75, i32 1, i32 1, i32 %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %65

81:                                               ; preds = %65
  ret void
}

declare dso_local i32 @set_win_tiles(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
