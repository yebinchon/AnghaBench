; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nice/extr_nice.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nice/extr_nice.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFNICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-n%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"n:\00", align 1
@errno = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: invalid nice value\00", align 1
@optind = common dso_local global i64 0, align 8
@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"getpriority\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"setpriority\00", align 1
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i64, i64* @DEFNICE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 2
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %54

20:                                               ; preds = %12
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isdigit(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %28, %20
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i64 @asprintf(i8** %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  br label %54

54:                                               ; preds = %53, %36, %28, %12, %2
  br label %55

55:                                               ; preds = %90, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @getopt(i32 %56, i8** %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %88 [
    i32 110, label %62
  ]

62:                                               ; preds = %60
  store i64 0, i64* @errno, align 8
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i64 @strtol(i8* %63, i8** %8, i32 10)
  store i64 %64, i64* %6, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** @optarg, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @errno, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @INT_MIN, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @INT_MAX, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76, %73, %68, %62
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %80
  br label %90

88:                                               ; preds = %60
  %89 = call i32 (...) @usage()
  br label %90

90:                                               ; preds = %88, %87
  br label %55

91:                                               ; preds = %55
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
  %105 = load i32, i32* @PRIO_PROCESS, align 4
  %106 = call i64 @getpriority(i32 %105, i32 0)
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* @errno, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %122

113:                                              ; preds = %104
  %114 = load i32, i32* @PRIO_PROCESS, align 4
  %115 = load i64, i64* %6, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @setpriority(i32 %114, i32 0, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %113
  br label %122

122:                                              ; preds = %121, %111
  %123 = load i8**, i8*** %5, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %5, align 8
  %126 = call i32 @execvp(i8* %124, i8** %125)
  %127 = load i64, i64* @errno, align 8
  %128 = load i64, i64* @ENOENT, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 127, i32 126
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @err(i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @getpriority(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @setpriority(i32, i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
