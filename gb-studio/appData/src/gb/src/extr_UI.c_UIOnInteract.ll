; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIOnInteract.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIOnInteract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@J_A = common dso_local global i32 0, align 4
@text_drawn = common dso_local global i64 0, align 8
@text_count = common dso_local global i64 0, align 8
@menu_enabled = common dso_local global i64 0, align 8
@menu_cancel_on_last_option = common dso_local global i64 0, align 8
@menu_index = common dso_local global i64 0, align 8
@menu_num_options = common dso_local global i64 0, align 8
@script_variables = common dso_local global i64* null, align 8
@menu_flag = common dso_local global i64 0, align 8
@J_UP = common dso_local global i32 0, align 4
@J_DOWN = common dso_local global i32 0, align 4
@J_LEFT = common dso_local global i32 0, align 4
@menu_layout = common dso_local global i64 0, align 8
@J_RIGHT = common dso_local global i32 0, align 4
@menu_cancel_on_b = common dso_local global i64 0, align 8
@J_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIOnInteract() #0 {
  %1 = load i32, i32* @J_A, align 4
  %2 = call i64 @JOY_PRESSED(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %37

4:                                                ; preds = %0
  %5 = load i64, i64* @text_drawn, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load i64, i64* @text_count, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load i64, i64* @menu_enabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load i64, i64* @menu_cancel_on_last_option, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* @menu_index, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i64, i64* @menu_num_options, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64*, i64** @script_variables, align 8
  %23 = load i64, i64* @menu_flag, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  br label %31

25:                                               ; preds = %16, %13
  %26 = load i64, i64* @menu_index, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i64*, i64** @script_variables, align 8
  %29 = load i64, i64* @menu_flag, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = call i32 (...) @UICloseDialogue()
  br label %35

33:                                               ; preds = %10
  %34 = call i32 (...) @UICloseDialogue()
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %7, %4
  br label %110

37:                                               ; preds = %0
  %38 = load i64, i64* @menu_enabled, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %37
  %41 = load i32, i32* @J_UP, align 4
  %42 = call i64 @JOY_PRESSED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64, i64* @menu_index, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i64 @MAX(i64 %46, i32 0)
  store i64 %47, i64* @menu_index, align 8
  %48 = call i32 (...) @UIDrawMenuCursor()
  br label %108

49:                                               ; preds = %40
  %50 = load i32, i32* @J_DOWN, align 4
  %51 = call i64 @JOY_PRESSED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i64, i64* @menu_index, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i64, i64* @menu_num_options, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i64 @MIN(i64 %55, i64 %57)
  store i64 %58, i64* @menu_index, align 8
  %59 = call i32 (...) @UIDrawMenuCursor()
  br label %107

60:                                               ; preds = %49
  %61 = load i32, i32* @J_LEFT, align 4
  %62 = call i64 @JOY_PRESSED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i64, i64* @menu_layout, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* @menu_index, align 8
  %69 = sub nsw i64 %68, 4
  %70 = call i64 @MAX(i64 %69, i32 0)
  store i64 %70, i64* @menu_index, align 8
  br label %72

71:                                               ; preds = %64
  store i64 0, i64* @menu_index, align 8
  br label %72

72:                                               ; preds = %71, %67
  %73 = call i32 (...) @UIDrawMenuCursor()
  br label %106

74:                                               ; preds = %60
  %75 = load i32, i32* @J_RIGHT, align 4
  %76 = call i64 @JOY_PRESSED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i64, i64* @menu_layout, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i64, i64* @menu_index, align 8
  %83 = add nsw i64 %82, 4
  %84 = load i64, i64* @menu_num_options, align 8
  %85 = sub nsw i64 %84, 1
  %86 = call i64 @MIN(i64 %83, i64 %85)
  store i64 %86, i64* @menu_index, align 8
  br label %90

87:                                               ; preds = %78
  %88 = load i64, i64* @menu_num_options, align 8
  %89 = sub nsw i64 %88, 1
  store i64 %89, i64* @menu_index, align 8
  br label %90

90:                                               ; preds = %87, %81
  %91 = call i32 (...) @UIDrawMenuCursor()
  br label %105

92:                                               ; preds = %74
  %93 = load i64, i64* @menu_cancel_on_b, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* @J_B, align 4
  %97 = call i64 @JOY_PRESSED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i64*, i64** @script_variables, align 8
  %101 = load i64, i64* @menu_flag, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 0, i64* %102, align 8
  %103 = call i32 (...) @UICloseDialogue()
  br label %104

104:                                              ; preds = %99, %95, %92
  br label %105

105:                                              ; preds = %104, %90
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %53
  br label %108

108:                                              ; preds = %107, %44
  br label %109

109:                                              ; preds = %108, %37
  br label %110

110:                                              ; preds = %109, %36
  ret void
}

declare dso_local i64 @JOY_PRESSED(i32) #1

declare dso_local i32 @UICloseDialogue(...) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @UIDrawMenuCursor(...) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
