; ModuleID = '/home/carl/AnghaBench/git/extr_argv-array.c_argv_array_split.c'
source_filename = "/home/carl/AnghaBench/git/extr_argv-array.c_argv_array_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argv_array_split(%struct.argv_array* %0, i8* %1) #0 {
  %3 = alloca %struct.argv_array*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = call i64 @isspace(i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  br label %6

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %59

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %22

38:                                               ; preds = %33
  %39 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @xstrndup(i8* %40, i32 %46)
  %48 = call i32 @argv_array_push_nodup(%struct.argv_array* %39, i32 %47)
  br label %49

49:                                               ; preds = %54, %38
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  store i8* %58, i8** %4, align 8
  br label %15

59:                                               ; preds = %20
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @argv_array_push_nodup(%struct.argv_array*, i32) #1

declare dso_local i32 @xstrndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
