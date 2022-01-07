; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_putKcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_putKcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@s_start = common dso_local global i8* null, align 8
@margin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\\h'|%dn'\00", align 1
@nokeyw = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"\\*(+K\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\\*(-K\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @putKcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putKcp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %124, %120, %64, %48, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ule i8* %10, %11
  br i1 %12, label %13, label %129

13:                                               ; preds = %9
  %14 = load i64, i64* @idx, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %49

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %45, %31
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 9
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  br label %33

48:                                               ; preds = %43
  br label %9

49:                                               ; preds = %21
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %61, %55
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %56

64:                                               ; preds = %56
  %65 = load i8*, i8** @s_start, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @tabs(i8* %65, i8* %66)
  %68 = load i32, i32* @margin, align 4
  %69 = sdiv i32 %68, 8
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 10
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* @margin, align 4
  %75 = srem i32 %74, 8
  %76 = sub nsw i32 %73, %75
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %9

78:                                               ; preds = %50
  %79 = load i32, i32* @nokeyw, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %124, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %124, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 35
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isidchr(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %89, %84
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** @s_start, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isidchr(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %98, %94
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @iskw(i8* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %116, %109
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %4, align 8
  %114 = load i8, i8* %112, align 1
  %115 = call i32 @putcp(i8 zeroext %114)
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %7, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %111, label %120

120:                                              ; preds = %116
  %121 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %9

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %98, %89
  br label %124

124:                                              ; preds = %123, %81, %78
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %4, align 8
  %127 = load i8, i8* %125, align 1
  %128 = call i32 @putcp(i8 zeroext %127)
  br label %9

129:                                              ; preds = %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tabs(i8*, i8*) #1

declare dso_local i64 @isidchr(i8 signext) #1

declare dso_local i32 @iskw(i8*) #1

declare dso_local i32 @ps(i8*) #1

declare dso_local i32 @putcp(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
