; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_paint.c_set_cursor.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_paint.c_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@cursors = common dso_local global %struct.TYPE_2__* null, align 8
@current_cursor = common dso_local global i64 0, align 8
@cursors_data = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_cursor() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %45, %0
  %5 = load i64, i64* %1, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %7 = load i64, i64* @current_cursor, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %5, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %4
  store i64 0, i64* %2, align 8
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %16 = load i64, i64* @current_cursor, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %13
  %22 = load i64, i64* %3, align 8
  %23 = load i32*, i32** @cursors_data, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cursors, align 8
  %25 = load i64, i64* @current_cursor, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %28, %29
  %31 = getelementptr inbounds i32, i32* %23, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_sprite_data(i64 %22, i32 1, i32 %32)
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @set_sprite_tile(i64 %34, i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @set_sprite_prop(i64 %37, i32 16)
  %39 = load i64, i64* %3, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %21
  %42 = load i64, i64* %2, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %2, align 8
  br label %13

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %1, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %1, align 8
  br label %4

48:                                               ; preds = %4
  br label %49

49:                                               ; preds = %55, %48
  %50 = load i64, i64* %3, align 8
  %51 = icmp slt i64 %50, 4
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @move_sprite(i64 %53, i32 0, i32 0)
  br label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %49

58:                                               ; preds = %49
  ret void
}

declare dso_local i32 @set_sprite_data(i64, i32, i32) #1

declare dso_local i32 @set_sprite_tile(i64, i64) #1

declare dso_local i32 @set_sprite_prop(i64, i32) #1

declare dso_local i32 @move_sprite(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
