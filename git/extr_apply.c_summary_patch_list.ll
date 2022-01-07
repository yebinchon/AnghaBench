; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_summary_patch_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_summary_patch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i8*, i8*, i32, i64, i64, i32, i64, i32, i64, %struct.patch* }

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" rewrite %s (%d%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.patch*)* @summary_patch_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @summary_patch_list(%struct.patch* %0) #0 {
  %2 = alloca %struct.patch*, align 8
  %3 = alloca %struct.patch*, align 8
  store %struct.patch* %0, %struct.patch** %2, align 8
  %4 = load %struct.patch*, %struct.patch** %2, align 8
  store %struct.patch* %4, %struct.patch** %3, align 8
  br label %5

5:                                                ; preds = %69, %1
  %6 = load %struct.patch*, %struct.patch** %3, align 8
  %7 = icmp ne %struct.patch* %6, null
  br i1 %7, label %8, label %73

8:                                                ; preds = %5
  %9 = load %struct.patch*, %struct.patch** %3, align 8
  %10 = getelementptr inbounds %struct.patch, %struct.patch* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.patch*, %struct.patch** %3, align 8
  %15 = getelementptr inbounds %struct.patch, %struct.patch* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.patch*, %struct.patch** %3, align 8
  %18 = getelementptr inbounds %struct.patch, %struct.patch* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @show_file_mode_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %19)
  br label %68

21:                                               ; preds = %8
  %22 = load %struct.patch*, %struct.patch** %3, align 8
  %23 = getelementptr inbounds %struct.patch, %struct.patch* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.patch*, %struct.patch** %3, align 8
  %28 = getelementptr inbounds %struct.patch, %struct.patch* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.patch*, %struct.patch** %3, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @show_file_mode_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %32)
  br label %67

34:                                               ; preds = %21
  %35 = load %struct.patch*, %struct.patch** %3, align 8
  %36 = getelementptr inbounds %struct.patch, %struct.patch* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.patch*, %struct.patch** %3, align 8
  %41 = getelementptr inbounds %struct.patch, %struct.patch* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load %struct.patch*, %struct.patch** %3, align 8
  %46 = call i32 @show_rename_copy(%struct.patch* %45)
  br label %66

47:                                               ; preds = %39
  %48 = load %struct.patch*, %struct.patch** %3, align 8
  %49 = getelementptr inbounds %struct.patch, %struct.patch* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.patch*, %struct.patch** %3, align 8
  %54 = getelementptr inbounds %struct.patch, %struct.patch* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.patch*, %struct.patch** %3, align 8
  %57 = getelementptr inbounds %struct.patch, %struct.patch* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %58)
  %60 = load %struct.patch*, %struct.patch** %3, align 8
  %61 = call i32 @show_mode_change(%struct.patch* %60, i32 0)
  br label %65

62:                                               ; preds = %47
  %63 = load %struct.patch*, %struct.patch** %3, align 8
  %64 = call i32 @show_mode_change(%struct.patch* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %26
  br label %68

68:                                               ; preds = %67, %13
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.patch*, %struct.patch** %3, align 8
  %71 = getelementptr inbounds %struct.patch, %struct.patch* %70, i32 0, i32 9
  %72 = load %struct.patch*, %struct.patch** %71, align 8
  store %struct.patch* %72, %struct.patch** %3, align 8
  br label %5

73:                                               ; preds = %5
  ret void
}

declare dso_local i32 @show_file_mode_name(i8*, i32, i8*) #1

declare dso_local i32 @show_rename_copy(%struct.patch*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @show_mode_change(%struct.patch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
