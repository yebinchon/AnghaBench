; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_build_counters_from_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_build_counters_from_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"First line can't be read from file err:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"s/\00", align 1
@cnts = common dso_local global i32* null, align 8
@ncnts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No memory err:%d\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"We have %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @build_counters_from_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_counters_from_header(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [8192 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @fgets(i8* %9, i32 8192, i32* %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %118

16:                                               ; preds = %1
  %17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %50, %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %25
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %45, %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %32

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48, %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32* @malloc(i64 %57)
  store i32* %58, i32** @cnts, align 8
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* @ncnts, align 4
  %60 = load i32*, i32** @cnts, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %118

65:                                               ; preds = %53
  %66 = load i32*, i32** @cnts, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @memset(i32* %66, i32 0, i64 %67)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %109, %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %75
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %81
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %99, %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %96
  store i8 0, i8* %97, align 1
  br label %102

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %83

102:                                              ; preds = %94, %83
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @process_header(i32 %103, i8* %104)
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %102, %73
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %69

112:                                              ; preds = %69
  %113 = load i64, i64* @verbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %13, %62, %115, %112
  ret void
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @process_header(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
