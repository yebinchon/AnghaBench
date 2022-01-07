; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_paint.c_run.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_paint.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHOW_SPRITES = common dso_local global i32 0, align 4
@J_UP = common dso_local global i32 0, align 4
@J_DOWN = common dso_local global i32 0, align 4
@J_LEFT = common dso_local global i32 0, align 4
@J_RIGHT = common dso_local global i32 0, align 4
@cursor_y = common dso_local global i32 0, align 4
@cursor_x = common dso_local global i32 0, align 4
@J_SELECT = common dso_local global i32 0, align 4
@HIDE_SPRITES = common dso_local global i32 0, align 4
@J_A = common dso_local global i32 0, align 4
@J_B = common dso_local global i32 0, align 4
@colors = common dso_local global i32* null, align 8
@current_color = common dso_local global i64 0, align 8
@modes = common dso_local global i32* null, align 8
@current_mode = common dso_local global i64 0, align 8
@WHITE = common dso_local global i32 0, align 4
@SOLID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 10, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @set_cursor()
  %6 = call i32 (...) @move_cursor()
  %7 = load i32, i32* @SHOW_SPRITES, align 4
  br label %8

8:                                                ; preds = %0, %141
  %9 = call i32 (...) @wait_vbl_done()
  %10 = call i32 (...) @joypad()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @J_UP, align 4
  %13 = load i32, i32* @J_DOWN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @J_LEFT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @J_RIGHT, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %8
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @J_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @cursor_y, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @cursor_y, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @cursor_y, align 4
  br label %32

32:                                               ; preds = %29, %26, %21
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @J_DOWN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @cursor_y, align 4
  %39 = icmp slt i32 %38, 143
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @cursor_y, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @cursor_y, align 4
  br label %43

43:                                               ; preds = %40, %37, %32
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @J_LEFT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @cursor_x, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @cursor_x, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @cursor_x, align 4
  br label %54

54:                                               ; preds = %51, %48, %43
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @J_RIGHT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @cursor_x, align 4
  %61 = icmp slt i32 %60, 159
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @cursor_x, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @cursor_x, align 4
  br label %65

65:                                               ; preds = %62, %59, %54
  %66 = call i32 (...) @move_cursor()
  br label %67

67:                                               ; preds = %76, %65
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %1, align 4
  %72 = call i32 (...) @joypad()
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ false, %67 ], [ %73, %70 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = call i32 (...) @wait_vbl_done()
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %2, align 4
  br label %67

80:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %82

81:                                               ; preds = %8
  store i32 10, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @J_SELECT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @HIDE_SPRITES, align 4
  %89 = call i32 (...) @menu()
  %90 = call i32 (...) @set_cursor()
  %91 = call i32 (...) @move_cursor()
  %92 = load i32, i32* @SHOW_SPRITES, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @J_A, align 4
  %96 = load i32, i32* @J_B, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = load i32, i32* @J_A, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %93
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @cursor_x, align 4
  %108 = load i32, i32* @cursor_y, align 4
  %109 = load i32*, i32** @colors, align 8
  %110 = load i64, i64* @current_color, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** @modes, align 8
  %114 = load i64, i64* @current_mode, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @plot(i32 %107, i32 %108, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %104, %101
  br label %120

119:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* @J_A, align 4
  %123 = load i32, i32* @J_B, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = load i32, i32* @J_B, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* @cursor_x, align 4
  %135 = load i32, i32* @cursor_y, align 4
  %136 = load i32, i32* @WHITE, align 4
  %137 = load i32, i32* @SOLID, align 4
  %138 = call i32 @plot(i32 %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %128
  br label %141

140:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %8
}

declare dso_local i32 @set_cursor(...) #1

declare dso_local i32 @move_cursor(...) #1

declare dso_local i32 @wait_vbl_done(...) #1

declare dso_local i32 @joypad(...) #1

declare dso_local i32 @menu(...) #1

declare dso_local i32 @plot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
