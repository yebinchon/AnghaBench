; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneNpcAt_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneNpcAt_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@actors = common dso_local global i64* null, align 8
@scene_num_actors = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SceneNpcAt_b(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64*, i64** @actors, align 8
  store i64* %13, i64** %12, align 8
  store i64 4, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %69, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @scene_num_actors, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64*, i64** %12, align 8
  %24 = call i32 @ACTOR_ENABLED(i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %11, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 %27
  store i64* %29, i64** %12, align 8
  br label %69

30:                                               ; preds = %22
  %31 = load i64*, i64** %12, align 8
  %32 = call i32 @ACTOR_X(i64* %31)
  %33 = call i64 @DIV_8(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = call i32 @ACTOR_Y(i64* %34)
  %36 = call i64 @DIV_8(i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i64 32, i64* %10, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %46, 1
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44, %40
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, 1
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %53, %49
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %74

65:                                               ; preds = %58, %44
  %66 = load i64, i64* %11, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 %66
  store i64* %68, i64** %12, align 8
  br label %69

69:                                               ; preds = %65, %26
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %14

72:                                               ; preds = %14
  %73 = load i64, i64* @scene_num_actors, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %63
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @ACTOR_ENABLED(i64*) #1

declare dso_local i64 @DIV_8(i32) #1

declare dso_local i32 @ACTOR_X(i64*) #1

declare dso_local i32 @ACTOR_Y(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
