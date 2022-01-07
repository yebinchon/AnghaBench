; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_display_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_display_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@screenbuf = common dso_local global i32* null, align 8
@smart_terminal = common dso_local global i64 0, align 8
@screen_length = common dso_local global i32 0, align 4
@Header_lines = common dso_local global i32 0, align 4
@screen_width = common dso_local global i32 0, align 4
@Largest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @display_resize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @screenbuf, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** @screenbuf, align 8
  %7 = call i32 @free(i32* %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @smart_terminal, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @screen_length, align 4
  %13 = load i32, i32* @Header_lines, align 4
  %14 = sub nsw i32 %12, %13
  br label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 1, %15 ]
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @screen_width, align 4
  %24 = call i32* @calloc(i32 %22, i32 %23)
  store i32* %24, i32** @screenbuf, align 8
  %25 = load i32*, i32** @screenbuf, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %1, align 4
  br label %37

28:                                               ; preds = %21
  %29 = load i64, i64* @smart_terminal, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @Largest, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
