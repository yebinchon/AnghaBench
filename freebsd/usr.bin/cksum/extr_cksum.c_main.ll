; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cksum/extr_cksum.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cksum/extr_cksum.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"illegal argument to -o option\00", align 1
@optind = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i32, i32*, i32*)*, align 8
  %14 = alloca void (i8*, i32, i32)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  store i32 (i32, i32*, i32*)* @csum1, i32 (i32, i32*, i32*)** %13, align 8
  store void (i8*, i32, i32)* @psum1, void (i8*, i32, i32)** %14, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %5, align 8
  br label %76

34:                                               ; preds = %27
  store i32 (i32, i32*, i32*)* @crc, i32 (i32, i32*, i32*)** %13, align 8
  store void (i8*, i32, i32)* @pcrc, void (i8*, i32, i32)** %14, align 8
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %64 [
    i32 111, label %42
    i32 63, label %63
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 (i32, i32*, i32*)* @csum1, i32 (i32, i32*, i32*)** %13, align 8
  store void (i8*, i32, i32)* @psum1, void (i8*, i32, i32)** %14, align 8
  br label %62

47:                                               ; preds = %42
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 (i32, i32*, i32*)* @csum2, i32 (i32, i32*, i32*)** %13, align 8
  store void (i8*, i32, i32)* @psum2, void (i8*, i32, i32)** %14, align 8
  br label %61

52:                                               ; preds = %47
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 (i32, i32*, i32*)* @crc32, i32 (i32, i32*, i32*)** %13, align 8
  store void (i8*, i32, i32)* @pcrc, void (i8*, i32, i32)** %14, align 8
  br label %60

57:                                               ; preds = %52
  %58 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %57, %56
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %46
  br label %66

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %40, %63
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %62
  br label %35

67:                                               ; preds = %35
  %68 = load i64, i64* @optind, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* @optind, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73
  store i8** %75, i8*** %5, align 8
  br label %76

76:                                               ; preds = %67, %31
  %77 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %77, i32* %8, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %116, %76
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %5, align 8
  %85 = load i8*, i8** %83, align 8
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* @O_RDONLY, align 4
  %88 = call i32 @open(i8* %86, i32 %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  store i32 1, i32* %9, align 4
  br label %116

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %13, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 %95(i32 %96, i32* %6, i32* %10)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8*, i8** %11, align 8
  br label %105

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i8* [ %103, %102 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %104 ]
  %107 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %106)
  store i32 1, i32* %9, align 4
  br label %113

108:                                              ; preds = %94
  %109 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %14, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %10, align 4
  call void %109(i8* %110, i32 %111, i32 %112)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @close(i32 %114)
  br label %116

116:                                              ; preds = %113, %90
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %78, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @exit(i32 %121) #3
  unreachable
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @csum1(i32, i32*, i32*) #1

declare dso_local void @psum1(i8*, i32, i32) #1

declare dso_local i32 @crc(i32, i32*, i32*) #1

declare dso_local void @pcrc(i8*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @csum2(i32, i32*, i32*) #1

declare dso_local void @psum2(i8*, i32, i32) #1

declare dso_local i32 @crc32(i32, i32*, i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
