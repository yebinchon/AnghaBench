; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_find_header.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_find_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i8**)* @find_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_header(i8* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %104, %4
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = icmp ult i8* %21, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %106

28:                                               ; preds = %26
  %29 = load i8*, i8** %11, align 8
  %30 = call i8* @strchrnul(i8* %29, i8 signext 10)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ule i8* %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %28
  store i8* null, i8** %5, align 8
  br label %107

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %41
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @memcmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %95

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = load i8**, i8*** %9, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  br label %77

75:                                               ; preds = %67
  %76 = load i8*, i8** %12, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i8* [ %74, %72 ], [ %76, %75 ]
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %77, %62
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %89, %91
  %93 = trunc i64 %92 to i32
  %94 = call i8* @xmemdupz(i8* %84, i32 %93)
  store i8* %94, i8** %5, align 8
  br label %107

95:                                               ; preds = %54, %48, %41
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  br label %104

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i8* [ %102, %100 ], [ null, %103 ]
  store i8* %105, i8** %11, align 8
  br label %17

106:                                              ; preds = %26
  store i8* null, i8** %5, align 8
  br label %107

107:                                              ; preds = %106, %80, %40
  %108 = load i8*, i8** %5, align 8
  ret i8* %108
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
