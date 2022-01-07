; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_unsafe_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_unsafe_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i8*, i8*, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid path '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.patch*)* @check_unsafe_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_unsafe_path(%struct.patch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.patch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.patch* %0, %struct.patch** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct.patch*, %struct.patch** %3, align 8
  %7 = getelementptr inbounds %struct.patch, %struct.patch* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.patch*, %struct.patch** %3, align 8
  %12 = getelementptr inbounds %struct.patch, %struct.patch* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.patch*, %struct.patch** %3, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.patch*, %struct.patch** %3, align 8
  %21 = getelementptr inbounds %struct.patch, %struct.patch* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.patch*, %struct.patch** %3, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %24, %19, %14
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.patch*, %struct.patch** %3, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.patch*, %struct.patch** %3, align 8
  %36 = getelementptr inbounds %struct.patch, %struct.patch* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.patch*, %struct.patch** %3, align 8
  %44 = getelementptr inbounds %struct.patch, %struct.patch* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @verify_path(i8* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @error(i32 %49, i8* %50)
  store i32 %51, i32* %2, align 4
  br label %67

52:                                               ; preds = %41, %38
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.patch*, %struct.patch** %3, align 8
  %58 = getelementptr inbounds %struct.patch, %struct.patch* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @verify_path(i8* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @error(i32 %63, i8* %64)
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %55, %52
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %62, %48
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @verify_path(i8*, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
