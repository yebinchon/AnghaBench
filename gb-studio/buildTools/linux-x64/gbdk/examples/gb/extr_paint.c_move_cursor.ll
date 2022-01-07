; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_paint.c_move_cursor.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_paint.c_move_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@cursors = common dso_local global %struct.TYPE_2__* null, align 8
@current_cursor = common dso_local global i64 0, align 8
@cursor_x = common dso_local global i64 0, align 8
@cursor_y = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_cursor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %54, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %6 = load i64, i64* @current_cursor, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %4, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %50, %11
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %15 = load i64, i64* @current_cursor, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %12
  %21 = load i32, i32* %1, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i64, i64* @cursor_x, align 8
  %26 = add nsw i64 %25, 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %28 = load i64, i64* @current_cursor, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %26, %31
  %33 = load i32, i32* %1, align 4
  %34 = shl i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @cursor_y, align 8
  %38 = add nsw i64 %37, 16
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %40 = load i64, i64* @current_cursor, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %38, %43
  %45 = load i32, i32* %2, align 4
  %46 = shl i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @move_sprite(i32 %24, i64 %36, i64 %48)
  br label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %12

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %3

57:                                               ; preds = %3
  ret void
}

declare dso_local i32 @move_sprite(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
