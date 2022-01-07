; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_paint.c_reset_icon.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_paint.c_reset_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@icons = common dso_local global %struct.TYPE_2__* null, align 8
@data_buffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_icon(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %55, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %6, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %5
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %15, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %34, %35
  %37 = load i32*, i32** @data_buffer, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %39 = load i64, i64* %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = shl i64 %43, 1
  %45 = add i64 %42, %44
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %45, %46
  %48 = getelementptr inbounds i32, i32* %37, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @switch_data(i64 %29, i64 %36, i32 %49, i32* null)
  br label %51

51:                                               ; preds = %22
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %14

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %5

58:                                               ; preds = %5
  ret void
}

declare dso_local i32 @switch_data(i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
