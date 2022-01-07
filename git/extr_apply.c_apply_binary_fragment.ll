; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_binary_fragment.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_binary_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64 }
%struct.image = type { i64, i8* }
%struct.patch = type { i64, i64, %struct.fragment* }
%struct.fragment = type { i32, i64, i32, %struct.fragment* }

@.str = private unnamed_addr constant [35 x i8] c"missing binary patch data for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"cannot reverse-apply a binary patch without the reverse hunk to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.patch*)* @apply_binary_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_binary_fragment(%struct.apply_state* %0, %struct.image* %1, %struct.patch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.image*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca %struct.fragment*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.image* %1, %struct.image** %6, align 8
  store %struct.patch* %2, %struct.patch** %7, align 8
  %11 = load %struct.patch*, %struct.patch** %7, align 8
  %12 = getelementptr inbounds %struct.patch, %struct.patch* %11, i32 0, i32 2
  %13 = load %struct.fragment*, %struct.fragment** %12, align 8
  store %struct.fragment* %13, %struct.fragment** %8, align 8
  %14 = load %struct.fragment*, %struct.fragment** %8, align 8
  %15 = icmp ne %struct.fragment* %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  %17 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.patch*, %struct.patch** %7, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.patch*, %struct.patch** %7, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.patch*, %struct.patch** %7, align 8
  %28 = getelementptr inbounds %struct.patch, %struct.patch* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %25, %22 ], [ %29, %26 ]
  %32 = call i32 @error(i32 %17, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %112

33:                                               ; preds = %3
  %34 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %35 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load %struct.fragment*, %struct.fragment** %8, align 8
  %40 = getelementptr inbounds %struct.fragment, %struct.fragment* %39, i32 0, i32 3
  %41 = load %struct.fragment*, %struct.fragment** %40, align 8
  %42 = icmp ne %struct.fragment* %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.patch*, %struct.patch** %7, align 8
  %46 = getelementptr inbounds %struct.patch, %struct.patch* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.patch*, %struct.patch** %7, align 8
  %51 = getelementptr inbounds %struct.patch, %struct.patch* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.patch*, %struct.patch** %7, align 8
  %55 = getelementptr inbounds %struct.patch, %struct.patch* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i64 [ %52, %49 ], [ %56, %53 ]
  %59 = call i32 @error(i32 %44, i64 %58)
  store i32 %59, i32* %4, align 4
  br label %112

60:                                               ; preds = %38
  %61 = load %struct.fragment*, %struct.fragment** %8, align 8
  %62 = getelementptr inbounds %struct.fragment, %struct.fragment* %61, i32 0, i32 3
  %63 = load %struct.fragment*, %struct.fragment** %62, align 8
  store %struct.fragment* %63, %struct.fragment** %8, align 8
  br label %64

64:                                               ; preds = %60, %33
  %65 = load %struct.fragment*, %struct.fragment** %8, align 8
  %66 = getelementptr inbounds %struct.fragment, %struct.fragment* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %111 [
    i32 129, label %68
    i32 128, label %94
  ]

68:                                               ; preds = %64
  %69 = load %struct.image*, %struct.image** %6, align 8
  %70 = getelementptr inbounds %struct.image, %struct.image* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.image*, %struct.image** %6, align 8
  %73 = getelementptr inbounds %struct.image, %struct.image* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fragment*, %struct.fragment** %8, align 8
  %76 = getelementptr inbounds %struct.fragment, %struct.fragment* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fragment*, %struct.fragment** %8, align 8
  %79 = getelementptr inbounds %struct.fragment, %struct.fragment* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @patch_delta(i8* %71, i64 %74, i32 %77, i64 %80, i64* %9)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %112

85:                                               ; preds = %68
  %86 = load %struct.image*, %struct.image** %6, align 8
  %87 = call i32 @clear_image(%struct.image* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.image*, %struct.image** %6, align 8
  %90 = getelementptr inbounds %struct.image, %struct.image* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.image*, %struct.image** %6, align 8
  %93 = getelementptr inbounds %struct.image, %struct.image* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  store i32 0, i32* %4, align 4
  br label %112

94:                                               ; preds = %64
  %95 = load %struct.image*, %struct.image** %6, align 8
  %96 = call i32 @clear_image(%struct.image* %95)
  %97 = load %struct.fragment*, %struct.fragment** %8, align 8
  %98 = getelementptr inbounds %struct.fragment, %struct.fragment* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.image*, %struct.image** %6, align 8
  %101 = getelementptr inbounds %struct.image, %struct.image* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.fragment*, %struct.fragment** %8, align 8
  %103 = getelementptr inbounds %struct.fragment, %struct.fragment* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.image*, %struct.image** %6, align 8
  %106 = getelementptr inbounds %struct.image, %struct.image* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @xmemdupz(i32 %104, i64 %107)
  %109 = load %struct.image*, %struct.image** %6, align 8
  %110 = getelementptr inbounds %struct.image, %struct.image* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %4, align 4
  br label %112

111:                                              ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %94, %85, %84, %57, %30
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @error(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @patch_delta(i8*, i64, i32, i64, i64*) #1

declare dso_local i32 @clear_image(%struct.image*) #1

declare dso_local i8* @xmemdupz(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
