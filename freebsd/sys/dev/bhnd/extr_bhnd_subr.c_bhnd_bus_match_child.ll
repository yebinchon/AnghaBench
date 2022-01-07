; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_match_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_match_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_match = type { i32 }
%struct.bhnd_core_info = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bhnd_bus_match_child(i32* %0, %struct.bhnd_core_match* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bhnd_core_match*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bhnd_core_info, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bhnd_core_match* %1, %struct.bhnd_core_match** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @device_get_children(i32* %12, i32*** %6, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %49

17:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bhnd_get_core_info(i32* %27)
  %29 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %5, align 8
  %31 = call i64 @bhnd_core_matches(%struct.bhnd_core_info* %11, %struct.bhnd_core_match* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  br label %44

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %18

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32**, i32*** %6, align 8
  %46 = load i32, i32* @M_TEMP, align 4
  %47 = call i32 @free(i32** %45, i32 %46)
  %48 = load i32*, i32** %7, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %44, %16
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i32 @device_get_children(i32*, i32***, i32*) #1

declare dso_local i32 @bhnd_get_core_info(i32*) #1

declare dso_local i64 @bhnd_core_matches(%struct.bhnd_core_info*, %struct.bhnd_core_match*) #1

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
