; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIDrawMenuCursor.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIDrawMenuCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_num_options = common dso_local global i32 0, align 4
@text_num_lines = common dso_local global i32 0, align 4
@menu_index = common dso_local global i32 0, align 4
@ui_cursor_tiles = common dso_local global i32 0, align 4
@ui_bg_tiles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIDrawMenuCursor() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %26, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @menu_num_options, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @text_num_lines, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 10, i32 1
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @text_num_lines, align 4
  %14 = srem i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @menu_index, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @ui_cursor_tiles, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @ui_bg_tiles, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @set_win_tiles(i32 %11, i32 %15, i32 1, i32 1, i32 %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %2

29:                                               ; preds = %2
  ret void
}

declare dso_local i32 @set_win_tiles(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
