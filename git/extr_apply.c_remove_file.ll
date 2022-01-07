; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_remove_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.patch = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"unable to remove %s from index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*, i32)* @remove_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_file(%struct.apply_state* %0, %struct.patch* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.patch*, align 8
  %7 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.patch* %1, %struct.patch** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %9 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %14 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.patch*, %struct.patch** %6, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @remove_file_from_index(i32 %22, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.patch*, %struct.patch** %6, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @error(i32 %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %12, %3
  %36 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %37 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = load %struct.patch*, %struct.patch** %6, align 8
  %42 = getelementptr inbounds %struct.patch, %struct.patch* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.patch*, %struct.patch** %6, align 8
  %45 = getelementptr inbounds %struct.patch, %struct.patch* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @remove_or_warn(i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.patch*, %struct.patch** %6, align 8
  %54 = getelementptr inbounds %struct.patch, %struct.patch* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @remove_path(i32 %55)
  br label %57

57:                                               ; preds = %52, %49, %40
  br label %58

58:                                               ; preds = %57, %35
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @remove_file_from_index(i32, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @remove_or_warn(i32, i32) #1

declare dso_local i32 @remove_path(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
