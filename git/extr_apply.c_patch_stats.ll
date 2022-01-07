; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_patch_stats.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_patch_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i32 }
%struct.patch = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.patch*)* @patch_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_stats(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca %struct.apply_state*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  %8 = load %struct.patch*, %struct.patch** %4, align 8
  %9 = getelementptr inbounds %struct.patch, %struct.patch* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.patch*, %struct.patch** %4, align 8
  %12 = getelementptr inbounds %struct.patch, %struct.patch* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %17 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %23 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.patch*, %struct.patch** %4, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.patch*, %struct.patch** %4, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @quote_c_style(i64 %32, i32* null, i32* null, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.patch*, %struct.patch** %4, align 8
  %38 = getelementptr inbounds %struct.patch, %struct.patch* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @strlen(i64 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %44 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %50 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.patch*, %struct.patch** %4, align 8
  %54 = getelementptr inbounds %struct.patch, %struct.patch* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.patch*, %struct.patch** %4, align 8
  %59 = getelementptr inbounds %struct.patch, %struct.patch* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @quote_c_style(i64 %60, i32* null, i32* null, i32 0)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.patch*, %struct.patch** %4, align 8
  %66 = getelementptr inbounds %struct.patch, %struct.patch* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @strlen(i64 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %72 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %78 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %52
  ret void
}

declare dso_local i32 @quote_c_style(i64, i32*, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
