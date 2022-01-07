; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_fragments.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.image = type { i32 }
%struct.patch = type { i8*, i8*, i32, i32, i64, %struct.fragment* }
%struct.fragment = type { i8*, i32, %struct.fragment* }

@.str = private unnamed_addr constant [21 x i8] c"patch failed: %s:%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.patch*)* @apply_fragments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_fragments(%struct.apply_state* %0, %struct.image* %1, %struct.patch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.image*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca %struct.fragment*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.image* %1, %struct.image** %6, align 8
  store %struct.patch* %2, %struct.patch** %7, align 8
  %13 = load %struct.patch*, %struct.patch** %7, align 8
  %14 = getelementptr inbounds %struct.patch, %struct.patch* %13, i32 0, i32 5
  %15 = load %struct.fragment*, %struct.fragment** %14, align 8
  store %struct.fragment* %15, %struct.fragment** %8, align 8
  %16 = load %struct.patch*, %struct.patch** %7, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.patch*, %struct.patch** %7, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.patch*, %struct.patch** %7, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i8* [ %23, %20 ], [ %27, %24 ]
  store i8* %29, i8** %9, align 8
  %30 = load %struct.patch*, %struct.patch** %7, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.patch*, %struct.patch** %7, align 8
  %34 = getelementptr inbounds %struct.patch, %struct.patch* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %36 = load %struct.patch*, %struct.patch** %7, align 8
  %37 = getelementptr inbounds %struct.patch, %struct.patch* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %42 = load %struct.image*, %struct.image** %6, align 8
  %43 = load %struct.patch*, %struct.patch** %7, align 8
  %44 = call i32 @apply_binary(%struct.apply_state* %41, %struct.image* %42, %struct.patch* %43)
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %75, %45
  %47 = load %struct.fragment*, %struct.fragment** %8, align 8
  %48 = icmp ne %struct.fragment* %47, null
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %53 = load %struct.image*, %struct.image** %6, align 8
  %54 = load %struct.fragment*, %struct.fragment** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @apply_one_fragment(%struct.apply_state* %52, %struct.image* %53, %struct.fragment* %54, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.fragment*, %struct.fragment** %8, align 8
  %64 = getelementptr inbounds %struct.fragment, %struct.fragment* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @error(i32 %61, i8* %62, i8* %65)
  %67 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %68 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %80

72:                                               ; preds = %60
  %73 = load %struct.fragment*, %struct.fragment** %8, align 8
  %74 = getelementptr inbounds %struct.fragment, %struct.fragment* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %49
  %76 = load %struct.fragment*, %struct.fragment** %8, align 8
  %77 = getelementptr inbounds %struct.fragment, %struct.fragment* %76, i32 0, i32 2
  %78 = load %struct.fragment*, %struct.fragment** %77, align 8
  store %struct.fragment* %78, %struct.fragment** %8, align 8
  br label %46

79:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %71, %40
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @apply_binary(%struct.apply_state*, %struct.image*, %struct.patch*) #1

declare dso_local i64 @apply_one_fragment(%struct.apply_state*, %struct.image*, %struct.fragment*, i32, i32, i32) #1

declare dso_local i32 @error(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
