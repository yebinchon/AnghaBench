; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_numstat_patch_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_numstat_patch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { i8*, i8*, i32, i32, i64, %struct.patch* }

@.str = private unnamed_addr constant [5 x i8] c"-\09-\09\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\09%d\09\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.patch*)* @numstat_patch_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @numstat_patch_list(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca %struct.apply_state*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  br label %6

6:                                                ; preds = %45, %2
  %7 = load %struct.patch*, %struct.patch** %4, align 8
  %8 = icmp ne %struct.patch* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = load %struct.patch*, %struct.patch** %4, align 8
  %11 = getelementptr inbounds %struct.patch, %struct.patch* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.patch*, %struct.patch** %4, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %22

18:                                               ; preds = %9
  %19 = load %struct.patch*, %struct.patch** %4, align 8
  %20 = getelementptr inbounds %struct.patch, %struct.patch* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i8* [ %17, %14 ], [ %21, %18 ]
  store i8* %23, i8** %5, align 8
  %24 = load %struct.patch*, %struct.patch** %4, align 8
  %25 = getelementptr inbounds %struct.patch, %struct.patch* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %38

30:                                               ; preds = %22
  %31 = load %struct.patch*, %struct.patch** %4, align 8
  %32 = getelementptr inbounds %struct.patch, %struct.patch* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.patch*, %struct.patch** %4, align 8
  %35 = getelementptr inbounds %struct.patch, %struct.patch* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @stdout, align 4
  %41 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %42 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_name_quoted(i8* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load %struct.patch*, %struct.patch** %4, align 8
  %47 = getelementptr inbounds %struct.patch, %struct.patch* %46, i32 0, i32 5
  %48 = load %struct.patch*, %struct.patch** %47, align 8
  store %struct.patch* %48, %struct.patch** %4, align 8
  br label %6

49:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @write_name_quoted(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
