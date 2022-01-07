; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_find_commit_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_find_commit_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_commit_header(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %72, %3
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @strchrnul(i8* %18, i8 signext 10)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* null, i8** %4, align 8
  br label %75

24:                                               ; preds = %17
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %24
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @strncmp(i8* %34, i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = sub nsw i64 %55, 1
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %4, align 8
  br label %75

63:                                               ; preds = %39, %33, %24
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i8* [ %70, %68 ], [ null, %71 ]
  store i8* %73, i8** %9, align 8
  br label %14

74:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %75

75:                                               ; preds = %74, %47, %23
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
