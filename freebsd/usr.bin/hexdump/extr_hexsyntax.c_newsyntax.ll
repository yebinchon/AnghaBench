; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_hexsyntax.c_newsyntax.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_hexsyntax.c_newsyntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"hd\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\22%08.8_Ax\0A\22\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\22%08.8_ax  \22 8/1 \22%02x \22 \22  \22 8/1 \22%02x \22 \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\22  |\22 16/1 \22%_p\22 \22|\\n\22\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bcCde:f:n:os:vx\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\22%07.7_Ax\0A\22\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\22%07.7_ax \22 16/1 \22%03o \22 \22\\n\22\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\22%07.7_ax \22 16/1 \22%3_c \22 \22\\n\22\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\22%07.7_ax \22 8/2 \22  %05u \22 \22\\n\22\00", align 1
@optarg = common dso_local global i8* null, align 8
@length = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"%s: bad length value\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\22%07.7_ax \22 8/2 \22 %06o \22 \22\\n\22\00", align 1
@skip = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"%s: bad skip value\00", align 1
@ALL = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"\22%07.7_ax \22 8/2 \22   %04x \22 \22\\n\22\00", align 1
@fshead = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"\22%07.7_ax \22 8/2 \22%04x \22 \22\\n\22\00", align 1
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newsyntax(i32 %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8*** %1, i8**** %4, align 8
  %8 = load i8***, i8**** %4, align 8
  %9 = load i8**, i8*** %8, align 8
  store i8** %9, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 104)
  store i8* %13, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @add(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @add(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %15, %2
  br label %24

24:                                               ; preds = %89, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i8**, i8*** %7, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %89 [
    i32 98, label %31
    i32 99, label %34
    i32 67, label %37
    i32 100, label %41
    i32 101, label %44
    i32 102, label %47
    i32 110, label %50
    i32 111, label %58
    i32 115, label %61
    i32 118, label %82
    i32 120, label %84
    i32 63, label %87
  ]

31:                                               ; preds = %29
  %32 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %33 = call i32 @add(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %89

34:                                               ; preds = %29
  %35 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @add(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %89

37:                                               ; preds = %29
  %38 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @add(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @add(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %89

41:                                               ; preds = %29
  %42 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 @add(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %89

44:                                               ; preds = %29
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @add(i8* %45)
  br label %89

47:                                               ; preds = %29
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @addfile(i8* %48)
  br label %89

50:                                               ; preds = %29
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i32 @atoi(i8* %51)
  store i32 %52, i32* @length, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %89

58:                                               ; preds = %29
  %59 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 @add(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %89

61:                                               ; preds = %29
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i32 @strtoll(i8* %62, i8** %6, i32 0)
  store i32 %63, i32* @skip, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %81 [
    i32 98, label %72
    i32 107, label %75
    i32 109, label %78
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* @skip, align 4
  %74 = mul nsw i32 %73, 512
  store i32 %74, i32* @skip, align 4
  br label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @skip, align 4
  %77 = mul nsw i32 %76, 1024
  store i32 %77, i32* @skip, align 4
  br label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @skip, align 4
  %80 = mul nsw i32 %79, 1048576
  store i32 %80, i32* @skip, align 4
  br label %81

81:                                               ; preds = %68, %78, %75, %72
  br label %89

82:                                               ; preds = %29
  %83 = load i32, i32* @ALL, align 4
  store i32 %83, i32* @vflag, align 4
  br label %89

84:                                               ; preds = %29
  %85 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i32 @add(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %89

87:                                               ; preds = %29
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %29, %84, %82, %81, %58, %57, %47, %44, %41, %37, %34, %31
  br label %24

90:                                               ; preds = %24
  %91 = load i32, i32* @fshead, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = call i32 @add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %95 = call i32 @add(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @optind, align 4
  %98 = load i8***, i8**** %4, align 8
  %99 = load i8**, i8*** %98, align 8
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8** %101, i8*** %98, align 8
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @add(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @addfile(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
