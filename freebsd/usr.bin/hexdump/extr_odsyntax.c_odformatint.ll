; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_odsyntax.c_odformatint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_odsyntax.c_odformatint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: invalid size\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported int size %lu\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%lu/%lu \22%*s%%%s%d%c\22 \22\\n\22\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i8*)* @odformatint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @odformatint(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  store i64 4, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %25 [
    i32 67, label %13
    i32 73, label %16
    i32 76, label %19
    i32 83, label %22
  ]

13:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  br label %60

16:                                               ; preds = %2
  store i64 4, i64* %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  br label %60

19:                                               ; preds = %2
  store i64 8, i64* %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %60

22:                                               ; preds = %2
  store i64 2, i64* %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %60

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @isdigit(i8 zeroext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  store i32 0, i32* @errno, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strtoul(i8* %31, i8** %8, i32 10)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 1
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 2
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 4
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 8
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %54, %51, %48, %45, %42
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %57, %25
  br label %60

60:                                               ; preds = %59, %22, %19, %16, %13
  %61 = load i64, i64* %6, align 8
  %62 = mul i64 8, %61
  %63 = shl i64 1, %62
  %64 = sub i64 %63, 1
  store i64 %64, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %68, %60
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load i8, i8* %3, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 120
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 4, i32 3
  %76 = load i64, i64* %5, align 8
  %77 = zext i32 %75 to i64
  %78 = lshr i64 %76, %77
  store i64 %78, i64* %5, align 8
  br label %65

79:                                               ; preds = %65
  %80 = load i8, i8* %3, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 100
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i64, i64* %6, align 8
  %88 = udiv i64 16, %87
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = mul i64 4, %90
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %91, %93
  %95 = trunc i64 %94 to i32
  %96 = load i8, i8* %3, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 100
  br i1 %98, label %103, label %99

99:                                               ; preds = %86
  %100 = load i8, i8* %3, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 117
  br label %103

103:                                              ; preds = %99, %86
  %104 = phi i1 [ true, %86 ], [ %102, %99 ]
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %107 = load i32, i32* %7, align 4
  %108 = load i8, i8* %3, align 1
  %109 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %88, i64 %89, i32 %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %106, i32 %107, i8 signext %108)
  %110 = load i8*, i8** %9, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = call i32 @err(i32 1, i32* null)
  br label %114

114:                                              ; preds = %112, %103
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @odadd(i8* %115)
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i8*, i8** %4, align 8
  ret i8* %119
}

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i64, i64, i32, i8*, i8*, i32, i8 signext) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @odadd(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
