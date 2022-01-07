; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_use_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_use_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i32*, i32 }
%struct.patch = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*)* @use_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_patch(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca %struct.patch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string_list_item*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store %struct.patch* %1, %struct.patch** %5, align 8
  %10 = load %struct.patch*, %struct.patch** %5, align 8
  %11 = getelementptr inbounds %struct.patch, %struct.patch* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.patch*, %struct.patch** %5, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.patch*, %struct.patch** %5, align 8
  %20 = getelementptr inbounds %struct.patch, %struct.patch* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i8* [ %17, %14 ], [ %21, %18 ]
  store i8* %23, i8** %6, align 8
  %24 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %25 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %30 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %37 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @skip_prefix(i8* %35, i64* %38, i8** %8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %34
  store i32 0, i32* %3, align 4
  br label %86

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %28, %22
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %76, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %51 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %57 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.string_list_item*, %struct.string_list_item** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %59, i64 %61
  store %struct.string_list_item* %62, %struct.string_list_item** %9, align 8
  %63 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %64 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @wildmatch(i32 %65, i8* %66, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %55
  %70 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %71 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %86

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %48

79:                                               ; preds = %48
  %80 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %81 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %69, %45
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @skip_prefix(i8*, i64*, i8**) #1

declare dso_local i32 @wildmatch(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
