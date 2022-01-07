; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-cv\00", align 1
@readstd = common dso_local global i64 0, align 8
@cflg = common dso_local global i64 0, align 8
@vflg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@onintr = common dso_local global i32 0, align 4
@_PATH_TMP = common dso_local global i32 0, align 4
@strings = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"strdup() failed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to create temporary file\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %24 [
    i32 45, label %15
    i32 99, label %18
    i32 118, label %21
  ]

15:                                               ; preds = %13
  %16 = load i64, i64* @readstd, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @readstd, align 8
  br label %26

18:                                               ; preds = %13
  %19 = load i64, i64* @cflg, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @cflg, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @vflg, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @vflg, align 4
  br label %26

24:                                               ; preds = %13
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %21, %18, %15
  br label %8

27:                                               ; preds = %8
  %28 = load i64, i64* @optind, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i64, i64* @optind, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  store i8** %35, i8*** %5, align 8
  %36 = load i32, i32* @SIGINT, align 4
  %37 = load i32, i32* @SIG_IGN, align 4
  %38 = call i64 @signal(i32 %36, i32 %37)
  %39 = load i64, i64* @SIG_DFL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i32, i32* @SIGINT, align 4
  %43 = load i32, i32* @onintr, align 4
  %44 = call i64 @signal(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %27
  %46 = load i64, i64* @cflg, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i64, i64* @readstd, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %45
  %55 = call i32 (...) @inithash()
  br label %73

56:                                               ; preds = %51, %48
  %57 = load i32, i32* @_PATH_TMP, align 4
  %58 = call i8* @strdup(i32 %57)
  store i8* %58, i8** @strings, align 8
  %59 = load i8*, i8** @strings, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i8*, i8** @strings, align 8
  %65 = call i32 @mkstemp(i8* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %54
  br label %74

74:                                               ; preds = %113, %73
  %75 = load i64, i64* @readstd, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = icmp sgt i32 %78, 0
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i1 [ true, %74 ], [ %79, %77 ]
  br i1 %81, label %82, label %114

82:                                               ; preds = %80
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32* @freopen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i64, i64* @readstd, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @stdin, align 4
  %96 = call i32* @freopen(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %98, %91, %88
  %104 = call i32 @process(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i64, i64* @readstd, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %4, align 4
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %5, align 8
  br label %113

112:                                              ; preds = %103
  store i64 0, i64* @readstd, align 8
  br label %113

113:                                              ; preds = %112, %107
  br label %74

114:                                              ; preds = %80
  %115 = call i32 (...) @flushsh()
  %116 = load i64, i64* @cflg, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 (...) @xsdotc()
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i8*, i8** @strings, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 47
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i8*, i8** @strings, align 8
  %128 = call i32 @unlink(i8* %127)
  %129 = call i32 @ignore(i32 %128)
  br label %130

130:                                              ; preds = %126, %120
  %131 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @inithash(...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @process(i8*) #1

declare dso_local i32 @flushsh(...) #1

declare dso_local i32 @xsdotc(...) #1

declare dso_local i32 @ignore(i32) #1

declare dso_local i32 @unlink(i8*) #1

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
