; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_paint.c_change_icon.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_paint.c_change_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i64 }

@icons = common dso_local global %struct.TYPE_2__* null, align 8
@selected_data = common dso_local global i32* null, align 8
@data = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_icon(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %80, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %8, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %76, %15
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %24
  %42 = load i32*, i32** @selected_data, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 1
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  %55 = getelementptr inbounds i32, i32* %42, i64 %54
  %56 = load i32, i32* %55, align 4
  br label %73

57:                                               ; preds = %24
  %58 = load i32*, i32** @data, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 1
  %67 = add nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %68, %69
  %71 = getelementptr inbounds i32, i32* %58, i64 %70
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %57, %41
  %74 = phi i32 [ %56, %41 ], [ %72, %57 ]
  %75 = call i32 @switch_data(i64 %31, i64 %38, i32 %74, i32* null)
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %16

79:                                               ; preds = %16
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %7

83:                                               ; preds = %7
  ret void
}

declare dso_local i32 @switch_data(i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
