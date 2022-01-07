; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_for_each_mergetag.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_for_each_mergetag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_extra_header = type { i32, %struct.commit_extra_header* }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mergetag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_mergetag(i32 (%struct.commit*, %struct.commit_extra_header*, i8*)* %0, %struct.commit* %1, i8* %2) #0 {
  %4 = alloca i32 (%struct.commit*, %struct.commit_extra_header*, i8*)*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit_extra_header*, align 8
  %8 = alloca %struct.commit_extra_header*, align 8
  %9 = alloca i32, align 4
  store i32 (%struct.commit*, %struct.commit_extra_header*, i8*)* %0, i32 (%struct.commit*, %struct.commit_extra_header*, i8*)** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.commit*, %struct.commit** %5, align 8
  %11 = call %struct.commit_extra_header* @read_commit_extra_headers(%struct.commit* %10, i32* null)
  store %struct.commit_extra_header* %11, %struct.commit_extra_header** %8, align 8
  %12 = load %struct.commit_extra_header*, %struct.commit_extra_header** %8, align 8
  store %struct.commit_extra_header* %12, %struct.commit_extra_header** %7, align 8
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.commit_extra_header*, %struct.commit_extra_header** %7, align 8
  %18 = icmp ne %struct.commit_extra_header* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = load %struct.commit_extra_header*, %struct.commit_extra_header** %7, align 8
  %23 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %34

28:                                               ; preds = %21
  %29 = load i32 (%struct.commit*, %struct.commit_extra_header*, i8*)*, i32 (%struct.commit*, %struct.commit_extra_header*, i8*)** %4, align 8
  %30 = load %struct.commit*, %struct.commit** %5, align 8
  %31 = load %struct.commit_extra_header*, %struct.commit_extra_header** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 %29(%struct.commit* %30, %struct.commit_extra_header* %31, i8* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load %struct.commit_extra_header*, %struct.commit_extra_header** %7, align 8
  %36 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %35, i32 0, i32 1
  %37 = load %struct.commit_extra_header*, %struct.commit_extra_header** %36, align 8
  store %struct.commit_extra_header* %37, %struct.commit_extra_header** %7, align 8
  br label %13

38:                                               ; preds = %19
  %39 = load %struct.commit_extra_header*, %struct.commit_extra_header** %8, align 8
  %40 = call i32 @free_commit_extra_headers(%struct.commit_extra_header* %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local %struct.commit_extra_header* @read_commit_extra_headers(%struct.commit*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free_commit_extra_headers(%struct.commit_extra_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
