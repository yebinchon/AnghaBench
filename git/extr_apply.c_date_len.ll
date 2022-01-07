; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_date_len.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_date_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"72-02-05\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-05\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @date_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @date_len(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = sext i32 %15 to i64
  %17 = sub i64 %14, %16
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 45
  br i1 %21, label %22, label %23

22:                                               ; preds = %12, %2
  store i64 0, i64* %3, align 8
  br label %114

23:                                               ; preds = %12
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %6, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = call i64 @isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %23
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load i8, i8* %37, align 1
  %40 = call i64 @isdigit(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 45
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i8, i8* %49, align 1
  %52 = call i64 @isdigit(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  %57 = load i8, i8* %55, align 1
  %58 = call i64 @isdigit(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 45
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = call i64 @isdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  %75 = load i8, i8* %73, align 1
  %76 = call i64 @isdigit(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72, %66, %60, %54, %48, %42, %36, %23
  store i64 0, i64* %3, align 8
  br label %114

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %86 = sext i32 %85 to i64
  %87 = icmp sge i64 %84, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %79
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isdigit(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -2
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @isdigit(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i8*, i8** %6, align 8
  %103 = sext i32 %101 to i64
  %104 = sub i64 0, %103
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %100, %94, %88, %79
  %107 = load i8*, i8** %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8*, i8** %6, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  store i64 %113, i64* %3, align 8
  br label %114

114:                                              ; preds = %106, %78, %22
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
