; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_sound.c_draw_screen.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_sound.c_draw_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FIRST_X = common dso_local global i32 0, align 4
@TITLE_Y = common dso_local global i64 0, align 8
@params = common dso_local global %struct.TYPE_2__* null, align 8
@FIRST_Y = common dso_local global i64 0, align 8
@VAL_X = common dso_local global i32 0, align 4
@UNSIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @draw_screen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @cls()
  %5 = load i32, i32* @FIRST_X, align 4
  %6 = load i64, i64* @TITLE_Y, align 8
  %7 = call i32 @gotoxy(i32 %5, i64 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @print(i64 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %48, %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %13
  %23 = load i32, i32* @FIRST_X, align 4
  %24 = load i64, i64* @FIRST_Y, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @gotoxy(i32 %23, i64 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @print(i64 %35)
  %37 = load i32, i32* @VAL_X, align 4
  %38 = load i64, i64* @FIRST_Y, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @gotoxy(i32 %37, i64 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @current_value(i32 %43, i32 %44)
  %46 = load i32, i32* @UNSIGNED, align 4
  %47 = call i32 @println(i32 %45, i32 10, i32 %46)
  br label %48

48:                                               ; preds = %22
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %13

51:                                               ; preds = %13
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, 1
  ret i32 %53
}

declare dso_local i32 @cls(...) #1

declare dso_local i32 @gotoxy(i32, i64) #1

declare dso_local i32 @print(i64) #1

declare dso_local i32 @println(i32, i32, i32) #1

declare dso_local i32 @current_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
