; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/setfib/extr_setfib.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/setfib/extr_setfib.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"net.fibs\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Multiple FIBS not supported\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-F%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"F:\00", align 1
@errno = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: invalid FIB (max %d)\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"setfib\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 4, i64* %10, align 8
  %11 = call i32 @sysctlbyname(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9, i64* %10, i32* null, i32 0)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %35, %29, %20
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isdigit(i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @asprintf(i8** %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %90, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = call i32 @getopt(i32 %54, i8** %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %88 [
    i32 70, label %60
  ]

60:                                               ; preds = %58
  store i64 0, i64* @errno, align 8
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i64 @strtol(i8* %61, i8** %8, i32 10)
  store i64 %62, i64* %6, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** @optarg, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* @errno, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp sge i64 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %74, %71, %66, %60
  %83 = load i8*, i8** @optarg, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %83, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  br label %90

88:                                               ; preds = %58
  %89 = call i32 (...) @usage()
  br label %90

90:                                               ; preds = %88, %87
  br label %53

91:                                               ; preds = %53
  %92 = load i64, i64* @optind, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load i64, i64* @optind, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 %97
  store i8** %99, i8*** %5, align 8
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = call i32 (...) @usage()
  br label %104

104:                                              ; preds = %102, %91
  store i64 0, i64* @errno, align 8
  %105 = load i64, i64* %6, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @setfib(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = call i32 @execvp(i8* %113, i8** %114)
  %116 = load i64, i64* @errno, align 8
  %117 = load i64, i64* @ENOENT, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 127, i32 126
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, ...) @err(i32 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @setfib(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
