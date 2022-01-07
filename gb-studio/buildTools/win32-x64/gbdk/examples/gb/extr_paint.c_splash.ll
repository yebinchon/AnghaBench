; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_paint.c_splash.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_paint.c_splash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cursor_x = common dso_local global i32 0, align 4
@cursor_y = common dso_local global i32 0, align 4
@PEN = common dso_local global i32 0, align 4
@current_cursor = common dso_local global i32 0, align 4
@SHOW_SPRITES = common dso_local global i32 0, align 4
@BLACK = common dso_local global i32 0, align 4
@SOLID = common dso_local global i32 0, align 4
@FILL = common dso_local global i32 0, align 4
@LTGREY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @splash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 40, i32* @cursor_x, align 4
  store i32 50, i32* @cursor_y, align 4
  %3 = load i32, i32* @PEN, align 4
  store i32 %3, i32* @current_cursor, align 4
  %4 = call i32 (...) @set_cursor()
  %5 = call i32 (...) @move_cursor()
  %6 = load i32, i32* @SHOW_SPRITES, align 4
  br label %7

7:                                                ; preds = %18, %0
  %8 = load i32, i32* @cursor_x, align 4
  %9 = icmp slt i32 %8, 120
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = call i32 (...) @wait_vbl_done()
  %12 = call i32 (...) @move_cursor()
  %13 = load i32, i32* @cursor_x, align 4
  %14 = load i32, i32* @cursor_y, align 4
  %15 = load i32, i32* @BLACK, align 4
  %16 = load i32, i32* @SOLID, align 4
  %17 = call i32 @plot(i32 %13, i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* @cursor_x, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @cursor_x, align 4
  br label %7

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32, i32* @cursor_y, align 4
  %24 = icmp slt i32 %23, 94
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = call i32 (...) @wait_vbl_done()
  %27 = call i32 (...) @move_cursor()
  %28 = load i32, i32* @cursor_x, align 4
  %29 = load i32, i32* @cursor_y, align 4
  %30 = load i32, i32* @BLACK, align 4
  %31 = load i32, i32* @SOLID, align 4
  %32 = call i32 @plot(i32 %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @cursor_y, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @cursor_y, align 4
  br label %22

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i32, i32* @cursor_x, align 4
  %39 = icmp sgt i32 %38, 40
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = call i32 (...) @wait_vbl_done()
  %42 = call i32 (...) @move_cursor()
  %43 = load i32, i32* @cursor_x, align 4
  %44 = load i32, i32* @cursor_y, align 4
  %45 = load i32, i32* @BLACK, align 4
  %46 = load i32, i32* @SOLID, align 4
  %47 = call i32 @plot(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @cursor_x, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @cursor_x, align 4
  br label %37

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* @cursor_y, align 4
  %54 = icmp sgt i32 %53, 50
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = call i32 (...) @wait_vbl_done()
  %57 = call i32 (...) @move_cursor()
  %58 = load i32, i32* @cursor_x, align 4
  %59 = load i32, i32* @cursor_y, align 4
  %60 = load i32, i32* @BLACK, align 4
  %61 = load i32, i32* @SOLID, align 4
  %62 = call i32 @plot(i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @cursor_y, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @cursor_y, align 4
  br label %52

66:                                               ; preds = %52
  store i32 80, i32* @cursor_x, align 4
  store i32 72, i32* @cursor_y, align 4
  %67 = load i32, i32* @FILL, align 4
  store i32 %67, i32* @current_cursor, align 4
  %68 = call i32 (...) @set_cursor()
  %69 = call i32 (...) @move_cursor()
  store i32 51, i32* %2, align 4
  br label %70

70:                                               ; preds = %87, %66
  %71 = load i32, i32* %2, align 4
  %72 = icmp slt i32 %71, 94
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  store i32 41, i32* %1, align 4
  br label %74

74:                                               ; preds = %83, %73
  %75 = load i32, i32* %1, align 4
  %76 = icmp slt i32 %75, 120
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @LTGREY, align 4
  %81 = load i32, i32* @SOLID, align 4
  %82 = call i32 @plot(i32 %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %74

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %70

90:                                               ; preds = %70
  ret void
}

declare dso_local i32 @set_cursor(...) #1

declare dso_local i32 @move_cursor(...) #1

declare dso_local i32 @wait_vbl_done(...) #1

declare dso_local i32 @plot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
