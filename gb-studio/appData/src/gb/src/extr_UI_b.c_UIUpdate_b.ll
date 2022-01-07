; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI_b.c_UIUpdate_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI_b.c_UIUpdate_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@win_speed = common dso_local global i32 0, align 4
@time = common dso_local global i32 0, align 4
@win_pos_x = common dso_local global i64 0, align 8
@win_dest_pos_x = common dso_local global i64 0, align 8
@win_pos_y = common dso_local global i64 0, align 8
@win_dest_pos_y = common dso_local global i64 0, align 8
@WX_REG = common dso_local global i64 0, align 8
@WY_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIUpdate_b() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @win_speed, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @time, align 4
  %6 = and i32 %5, 7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %76

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @win_speed, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @time, align 4
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %76

17:                                               ; preds = %12, %9
  %18 = load i32, i32* @win_speed, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @time, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %76

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @win_speed, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 2, i32* %1, align 4
  br label %32

31:                                               ; preds = %27
  store i32 1, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i64, i64* @win_pos_x, align 8
  %34 = load i64, i64* @win_dest_pos_x, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i64, i64* @win_pos_x, align 8
  %38 = load i64, i64* @win_dest_pos_x, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @win_pos_x, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* @win_pos_x, align 8
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @win_pos_x, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* @win_pos_x, align 8
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i64, i64* @win_pos_y, align 8
  %53 = load i64, i64* @win_dest_pos_y, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i64, i64* @win_pos_y, align 8
  %57 = load i64, i64* @win_dest_pos_y, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @win_pos_y, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* @win_pos_y, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @win_pos_y, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* @win_pos_y, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %72

70:                                               ; preds = %51
  %71 = call i32 (...) @UIDrawTextBuffer()
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i64, i64* @win_pos_x, align 8
  %74 = add nsw i64 %73, 7
  store i64 %74, i64* @WX_REG, align 8
  %75 = load i64, i64* @win_pos_y, align 8
  store i64 %75, i64* @WY_REG, align 8
  br label %76

76:                                               ; preds = %72, %24, %16, %8
  ret void
}

declare dso_local i32 @UIDrawTextBuffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
